class InterventionsController < ApplicationController


  # before action check if technian
  # before action set technian
  before_action :set_workorder, only: [:show, :start, :stop, :report, :new_photo]
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
      redirect_to interventions_path
    # redirect_to interventions_path
  end
end

def report
  @workorder.save
  redirect_to intervention_path(@workorder)

end
def new_photo
  photo = Photo.new(photo_params)
  photo.workorder = @workorder
  photo.save
  redirect_to intervention_path(@workorder)
end


private

def photo_params
  params.require(:photo).permit(:photo)
end

def set_workorder
  @workorder = Workorder.find(params[:id])
end

def workorder_params
  params.require(:workorder).permit(:address, :description, :date_planned, :date_done, :report, :status, :manager_id, :technician_id)
end
end
