class Usermailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.welcome.subject
  #
  def welcome(user)
	@user = user
	mail(:to=>user.email, :subject=>"Welcome to Level Up Games!")
   
  end
end
