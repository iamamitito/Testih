class CentresController < ApplicationController

  def index
    @centres = Centre.all
    @hash = Gmaps4rails.build_markers(@centres) do |centre, marker|
      marker.lat centre.latitude
      marker.lng centre.longitude
    end
  end

end
