class ContactMailer < ApplicationMailer
	default :from => 'as45@gmail.com'
	binding.pry
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_email(user)
    @user = user
    mail( :to => @user.email,
    :box => 'Thanks for signing up for our amazing app' )
  end

end
