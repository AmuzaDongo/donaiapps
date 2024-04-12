class ClientsController < ApplicationController
  before_action :authenticate
  before_action :set_client, only: %i[ show edit update destroy ]
  layout "admin"

  # GET /clients or /clients.json
  def index
    @clients = Current.user.clients.all
    @services = Current.user.services.all
  end

  # GET /clients/1 or /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
    @client = Client.friendly.find(params[:id])
  end

  # POST /clients or /clients.json
  def create
    @client = Current.user.clients.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to client_url(@client), notice: "client was successfully created." }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1 or /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to client_url(@client), notice: "client was successfully updated." }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1 or /clients/1.json
  def destroy
    @client.destroy

    respond_to do |format|
      format.html { redirect_to clients_url, notice: "client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Current.user.clients.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(
        :name,
        :person,
        :project,
        :description,
        :email,
        :phone,
        :company_size,
        :industy,
        :service_id,
        :country,
        :city,
        :address,
        :is_active,
        :amout,
        :status
      )
    end
end
