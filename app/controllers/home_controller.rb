class HomeController < ApplicationController

  def index
    @workorders = Workorder.where.not(latitude: nil, longitude: nil)

    @markers = @workorders.map do |workorder|
      {
        lat: workorder.latitude,
        lng: workorder.longitude#,
      }
    end
  end

end
