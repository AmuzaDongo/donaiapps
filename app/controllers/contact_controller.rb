class ContactController < DonaiappsController

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Contact Us", :contact_index_path

  def index
  end

  def create
    @first_name = params[:contact][:first_name]
    @last_name = params[:contact][:last_name]
    @email = params[:contact][:email]
    @subject = params[:contact][:subject]
    @message = params[:contact][:message]

    # Perform any necessary actions with the form data
    NotifierMailer.simple_message(@first_name, @last_name, @email, @subject, @message).deliver_now
    flash[:success] = "Your message has been sent successfully."
    redirect_to contact_index_path
  end
end
