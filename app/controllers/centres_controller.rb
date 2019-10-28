class CentresController < ApplicationController

  def index
    @centres = Centre.all
    @hash = Gmaps4rails.build_markers(@centres) do |centre, marker|
      marker.lat centre.latitude
      marker.lng centre.longitude
      marker.picture({
                  url: "https://i.imgur.com/O6W2WqR.png?1",
                  width: 30,
                  height: 30
                 })
      marker.infowindow centre.address
    end
  end

end
