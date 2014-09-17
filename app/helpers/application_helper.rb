module ApplicationHelper

def admin_user?
    if session[:admin_id]
      user = User.find session[:admin_id]
      user.has_role? :Manager
    end
end

def get_schools_list
	School.all.collect {|school| [school.name, school.id]}
end
end
