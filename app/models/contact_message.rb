class ContactMessage < ActiveRecord::Base

	def send_admin_email
    UserMailer.admin_email(self).deliver_now
  end

end
