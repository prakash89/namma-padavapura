namespace :db do

	desc "Set the existing user's role to User if there is no role"
	task "set_user_role" => :environment do
		users = User.all
		users.each do |user|
			unless (user.roles.present?)
				user.add_role :User
				p user.roles
			end
		end
	end

end