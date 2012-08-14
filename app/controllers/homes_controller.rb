class HomesController < ApplicationController
  def index
  end
  
  def contact
    if request.post? and params[:contact]
      if contact = Contact.new(params[:contact])
        contact.name = "#{params[:contact][:name]}"
        contact.email = "#{params[:contact][:email]}"
        contact.message = "#{params[:contact][:message]}"
        
        if contact.save
          flash[:notice] = "contact details is saved successfully."
          redirect_to("/")
        else
          render "contact"
        end
        
      end
    end
  end
  
  def about
    
  end
  
end
