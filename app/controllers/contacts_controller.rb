class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  #def create
   # @contact = Contact.new(params[:contact])
    #@contact.request = request
    #if @contact.deliver
     # flash.now[:error] = nil
    #else
     # flash.now[:error] = "cannot send message."
      #render "new"

    #end
  #end

  def send_mail
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ApplicationMailer.contact_form(name, email, message).deliver_later
    redirect_to contacts_new_path
  end
end
