class HomeController < ApplicationController
  before_action :no_proletarians

  def index
    @workorders = Workorder.where.not(latitude: nil, longitude: nil)

    @markers = @workorders.map do |workorder|
      {
        lat: workorder.latitude,
        lng: workorder.longitude#,
      }
    end
  end

  private

  def no_proletarians
      if current_user && current_user.user_type == "technician"
          redirect_to interventions_path
      end
    end

end
