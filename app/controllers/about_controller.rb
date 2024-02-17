class AboutController < DonaiappsController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "About Us", :about_index_path

  def index
  end
end
