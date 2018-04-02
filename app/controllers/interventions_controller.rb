class InterventionsController < ApplicationController


  # before action check if technian
  # before action set technian
  before_action :set_workorder, only: [:show, :start, :stop, :report, :new_photo, :signature, :signature_process]
  before_action :hide_nav

  def index
    if params[:date].nil?
      @date = Date.today
      @date_int = 0
    else
     @date = Date.today + params[:date].to_i
     @date_int = params[:date].to_i
   end
   @workorders = current_user.workorders.where(date_planned: @date.all_day)
 end

 def hide_nav
  @hide_nav = true
end

def show
  @new_photo = Photo.new
end

def start
  @workorder.status = "In progress"
  @workorder.date_started = DateTime.now
  @workorder.save

  redirect_to intervention_path(@workorder)
end

def stop
  @workorder.report = params[:report]

  if !@workorder.report || @workorder.report.blank?
    redirect_to intervention_path(@workorder), :flash => { :alert => "Please fill in the report!" }
  else
    @workorder.status = "Closed"
    @workorder.date_done = DateTime.now
    @workorder.save
    #  redirect_to interventions_path
    redirect_to signature_intervention_path(@workorder)

    # redirect_to interventions_path
  end
end

def splitBase64(uri)
  if uri.match(%r{^data:(.*?);(.*?),(.*)$})
    return {
      type:      $1, # "image/png"
      encoder:   $2, # "base64"
      data:      $3, # data string
      extension: $1.split('/')[1] # "png"
    }
  end
end


def signature_process
  data_url = params[:signature]["signature"]
  # @workorder.signature = Base64.decode64(data_url['data:image/png;base64,'.length .. -1])
  # @workorder.update_attributes(signature: data_url)
  unless data_url.blank?
    @workorder.update_attributes(signature: data_url)
    redirect_to interventions_path
  end
end

def signature
end

def report
  @workorder.save

end
def new_photo
  photo = Photo.new(photo_params)
  photo.workorder = @workorder
  photo.save
  redirect_to intervention_path(@workorder)
end


private

def photo_params
  params.require(:photo).permit(:photo, :legend)
end

def set_workorder
  @workorder = Workorder.find(params[:id])
end

def workorder_params
  params.require(:workorder).permit(:address, :description, :date_planned, :date_done, :report, :status, :manager_id, :technician_id)
end
end
