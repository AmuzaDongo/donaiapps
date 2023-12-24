class DashboardController < ApplicationController
  before_action :authenticate
  layout "admin"
  def index

    @users = User.all
  end
end
