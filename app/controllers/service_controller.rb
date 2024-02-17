class ServiceController < DonaiappsController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Services", :service_index_path

  def index
    @services = Service.published
  end

  def show
    @service = Service.published.friendly.find(params[:id])
    @features = @service.features.all
    @published_episode = @service.episodes.published.order(:created_at).first
    add_breadcrumb @service.title, show_service_path(@service)
  end
end
