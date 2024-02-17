class FeaturesController < ApplicationController
  before_action :find_service

  def create
    @feature = @service.features.new(feature_params)
    if !@feature.save
      flash[:errors] = @feature.errors.full_messages
    end
    redirect_to @service, notice: 'Feature was successfully added.'
  end

  private

  def find_service
    @service = Service.friendly.find(params[:service_id])
  end

  def feature_params
    params.require(:feature).permit(:name, :description)
  end
end
