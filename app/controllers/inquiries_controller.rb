class InquiriesController < ApplicationController
  before_action :set_inquiry, only: %i[ show edit update destroy ]
  layout "admin"


  def index
    @inquiries = Inquiry.all
  end

  def show
  end


  def edit
  end


  def update
    respond_to do |format|
      if @inquiry.update(inquiry_params)
        format.html { redirect_to inquiry_url(@inquiry), notice: "Inquiry was successfully updated." }
        format.json { render :show, status: :ok, location: @inquiry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @inquiry.destroy

    respond_to do |format|
      format.html { redirect_to inquiries_url, notice: "Inquiry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_inquiry
      @inquiry =Inquiry.friendly.find(params[:id])
    end

    def inquiry_params
      params.require(:inquiry).permit(:company_name, :contact_name, :email, :phone, :company_size, :industry, :service_id, :budget, :country, :city, :address, :about)
    end
end
