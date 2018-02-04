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
        flash.now[:notice] = 'Gracias por su mensaje. Lo estaremos contactando pronto.'
      else
        flash.now[:error] = 'No se pudo enviar su mensaje.'
        render welcome: "welcome/index"
      end
      
    end

  end
end
