class HomeController < ApplicationController

  def index
    @workorders = Workorder.where.not(latitude: nil, longitude: nil).where(date_planned: DateTime.now.all_day)

    @markers = @workorders.map do |workorder|
      {
        lat: workorder.latitude,
        lng: workorder.longitude,
        color: 'blue',
        infoWindow: {content: workorder.description}
      }
    end
  end

end
