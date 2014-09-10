class Village < ActiveRecord::Base

	def self.search(search)
      if search
        where("village_name like ?" ,"%#{search}%")
    else
    	all
      end
	end

end
