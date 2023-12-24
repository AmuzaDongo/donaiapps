class ServiceController < DonaiappsController
  def index
    @services = Service.published
  end
end
