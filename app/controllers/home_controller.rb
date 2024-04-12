class HomeController < DonaiappsController
  def index
    @services = Service.published
    @news = News.published
    @banner = Showcase.published.find(1)
    @showcases = Showcase.published
    @testmonials = Testmonial.all
  end

  def show_news
    @news = News.published.friendly.find(params[:id])
  end
end
