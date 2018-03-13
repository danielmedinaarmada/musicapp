class SpotifyController < ApplicationController

  before_action :authenticate_user!

  def search
    title = params[:title]
    if title
      @results = RSpotify::Track.search(title)
    end
  end
end
