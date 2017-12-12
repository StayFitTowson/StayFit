class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
  def contact_message
    @contact_messages = ContactMessage.new
    @contact_messages[:contact_name]= params[:contactName]
    @contact_messages[:contact_email]= params[:contactEmail]
    @contact_messages[:contact_subject]= params[:subject]
    @contact_messages[:message]= params[:message]
    if @contact_messages.save
        @contact_messages.send_admin_email
        flash[:info] = "Send your email to administrator account."
        redirect_to root_url
      else
        render 'contact'
      end
  end
end
