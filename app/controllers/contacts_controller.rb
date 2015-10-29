class ContactsController < ApplicationController
	before_filter :user_id

	def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_email(@user).deliver
      redirect_to user_articles_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end


  private
  def user_id
  	@user = current_user
  end

  def contact_params
    params.require(:contact).permit(:box, :to, :from)
  end
end
