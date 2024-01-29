class DashboardController < ApplicationController
  before_action :authenticate
  layout "admin"
  def index
    @count_showcases = Showcase.all
    @users = User.all
  end
end
