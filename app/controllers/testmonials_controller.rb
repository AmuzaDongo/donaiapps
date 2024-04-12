class TestmonialsController < ApplicationController
  before_action :authenticate
  before_action :set_testmonial, only: %i[ show edit update destroy ]
  layout "admin"

  # GET /testmonials or /testmonials.json
  def index
    @testmonials = Current.user.testmonials.all
  end

  # GET /testmonials/1 or /testmonials/1.json
  def show
  end

  # GET /testmonials/new
  def new
    @testmonial = Testmonial.new
  end

  # GET /testmonials/1/edit
  def edit
    @testmonial = Testmonial.friendly.find(params[:id])
  end

  # POST /testmonials or /testmonials.json
  def create
    @testmonial = Current.user.testmonials.new(testmonial_params)

    respond_to do |format|
      if @testmonial.save
        format.html { redirect_to testmonial_url(@testmonial), notice: "Testmonial was successfully created." }
        format.json { render :show, status: :created, location: @testmonial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testmonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testmonials/1 or /testmonials/1.json
  def update
    respond_to do |format|
      if @testmonial.update(testmonial_params)
        format.html { redirect_to testmonial_url(@testmonial), notice: "Testmonial was successfully updated." }
        format.json { render :show, status: :ok, location: @testmonial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testmonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testmonials/1 or /testmonials/1.json
  def destroy
    @testmonial.destroy

    respond_to do |format|
      format.html { redirect_to testmonials_url, notice: "Testmonial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testmonial
      @testmonial = Testmonial.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testmonial_params
      params.require(:testmonial).permit(:name, :title, :image, :company, :testmony, :status)
    end
end
