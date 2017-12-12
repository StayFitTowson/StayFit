class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end

   def admin_email(message)
    @message = message
    @user = User.find_by(admin: true)
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
