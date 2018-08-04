class FillAuthFbEmail < ActiveRecord::Migration[5.0]
  def change
		User.where("email LIKE '%@please.change.me%' ").each do |user|
			if user.hasFb? and user.auth_facebook.email.present?
				user.email = user.auth_facebook.email 
				unless user.save
					p user.name
				end
			end
		end
		
  end
end
