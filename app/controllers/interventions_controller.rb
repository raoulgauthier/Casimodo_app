class InterventionsController < ApplicationController


  # before action check if technian
  # before action set technian
  before_action :set_workorder, only: [:show, :start, :stop, :report]
  before_action :hide_nav

  def index
    @workorders = Workorder.all
    # return all workorder for that technician
  # private method
  # setting technician (all params)
  end

  def hide_nav
    @hide_nav = true
  end

  def show
  end

  def start
    @workorder.status = "In progress"
    @workorder.date_started = DateTime.now
    @workorder.save

    redirect_to intervention_path(@workorder)
  end

  def stop
    @workorder.report = params[:report]

    @workorder.status = "Done"
    @workorder.date_done = DateTime.now
    @workorder.save
    redirect_to interventions_path
    # redirect_to interventions_path
  end

  def report
    @workorder.save
    redirect_to intervention_path(@workorder)

  end



  private

  def set_workorder
    @workorder = Workorder.find(params[:id])
  end

  def workorder_params
    params.require(:workorder).permit(:address, :description, :date_planned, :date_done, :report, :status, :manager_id, :technician_id)
  end
end
