class HomeController < ApplicationController

  def index
    if params[:technician].nil? && params[:status].nil?
      @workorders = Workorder.where.not(latitude: nil, longitude: nil).where(date_planned: DateTime.now.all_day)
    else
      query = {}
      @tech = params[:technician][:id].blank? ? "" : query[:technician] = User.find(params[:technician][:id])
      @status = params[:status].blank? ? "" : query[:status] = params[:status]
      @workorders = Workorder.where.not(latitude: nil, longitude: nil).where(date_planned: DateTime.now.all_day).where(query)
    end
    @markers = @workorders.map do |workorder|
      {
        lat: workorder.latitude,
        lng: workorder.longitude,
        color: 'blue',
        # infoWindow: {content: workorder.status + "<br/>" + "<strong>" + workorder.address + "</strong>" + "'<br/>'" + workorder.description.capitalize}
        infoWindow:
        {content:
        "<div class='card-mini card-mini-solid-icon  '>
        <div class='card-body'>
          <div class='media'>
            <div class='media-body text-left'>

              <h4 class='m-0 counter' data-from='0' data-to='100' data-speed='5000'
              data-refresh-interval='80'>" + workorder.status + "</h4>

              <h6 class='m-0'>" + workorder.description + "</h6>

              <p class='m-0 text-muted'>" + workorder.address + "</p>
          </div>
          </div>
       </div>"}

      }
    end
  end

end





