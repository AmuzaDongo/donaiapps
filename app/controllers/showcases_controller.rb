class ShowcasesController < ApplicationController
  before_action :authenticate
  before_action :set_showcase, only: %i[ show edit update destroy ]
  layout "admin"

  # GET /showcases or /showcases.json
  def index
    @showcases = Current.user.showcases.all
  end

  # GET /showcases/1 or /showcases/1.json
  def show
  end

  # GET /showcases/new
  def new
    @showcase = Showcase.new
  end

  # GET /showcases/1/edit
  def edit
  end

  # POST /showcases or /showcases.json
  def create
    @showcase = Current.user.showcases.new(showcase_params)

    respond_to do |format|
      if @showcase.save
        format.html { redirect_to showcase_url(@showcase), notice: "Showcase was successfully created." }
        format.json { render :show, status: :created, location: @showcase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @showcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showcases/1 or /showcases/1.json
  def update
    respond_to do |format|
      if @showcase.update(showcase_params)
        format.html { redirect_to showcase_url(@showcase), notice: "Showcase was successfully updated." }
        format.json { render :show, status: :ok, location: @showcase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @showcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showcases/1 or /showcases/1.json
  def destroy
    @showcase.destroy

    respond_to do |format|
      format.html { redirect_to showcases_url, notice: "Showcase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showcase
      @showcase = Showcase.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def showcase_params
      params.require(:showcase).permit(:caption, :domain, :status, :description, :image)
    end
end
