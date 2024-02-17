class EpisodesController < ApplicationController
  before_action :find_episode

  def create
    @episode = @service.episodes.new(episode_params)
    if !@episode.save
      flash[:errors] = @episode.errors.full_messages
    end
    redirect_to @service, notice: 'episode was successfully added.'
  end

  private

  def find_episode
    @service = Service.friendly.find(params[:service_id])
  end

  def episode_params
    params.require(:episode).permit(:title, :youtube_id, :status, :description)
  end

end
