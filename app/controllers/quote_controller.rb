class QuoteController < DonaiappsController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Qoutation", :quote_index_path
  def index
  end

  def create
    @inquiry = Inquiry.new(inquiry_create_params)
    if @inquiry.save
      flash[:success] = "Your request has been sent successfully."
      redirect_to quote_index_path
    else
      redirect_to quote_index_path
    end
  end

  private

    def inquiry_create_params
      params.require(:inquiry).permit(
        :company_name, :contact_name, :email, :phone, :company_size, :industry, :service_id, :budget, :country, :city, :address, :about
      )
    end

end
