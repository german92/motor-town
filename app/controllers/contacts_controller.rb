class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if verify_recaptcha
      if @contact.deliver
        flash.now[:error] = nil
        flash.now[:notice] = 'Thank you for your message!'
      else
        flash.now[:error] = 'Cannot send message.'
        render welcome: "_new"
      end
      
    end

  end
end
