class UserMailer < ApplicationMailer
  default from:"vinaysankhla4233@gmail.com"
  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: "Welcome")
  end

  # def welcome_email
  #   UserMailer.with(user: user).welcome_email
  # end
end