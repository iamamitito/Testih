class CentresController < ApplicationController

  def index
    @centres = Centre.all
    @hash = Gmaps4rails.build_markers(@centres) do |centre, marker|
      marker.lat centre.latitude
      marker.lng centre.longitude
      if centre.kind == nil
      marker.picture({
                  url: "https://i.imgur.com/KoG0Ox2.png?1",
                  width: 30,
                  height: 30
                 })
      else
        marker.picture({
          url: "https://i.imgur.com/7dI9Yhk.png?1",
          width: 30,
          height: 30
         })
        end
      marker.infowindow centre.address
    end
  end

  def list
    @centres = Centre.all
    @centres = @centres.where("address like ?",  "%#{params[:q]}%") if params[:q]
  end

  def create
    centre = Centre.create(centre_params)
  end

  private
  def centre_params
        params.require(:centre).permit(:name, :address, :latitude, :longitude, :kind)
  end

end
