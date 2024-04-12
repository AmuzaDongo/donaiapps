class DashboardController < ApplicationController
  before_action :authenticate
  layout "admin"
  def index
    @count_showcases = Showcase.all
    @count_inquiries = Inquiry.all
    @count_clients = Client.all
    @users = User.all
  end
end
