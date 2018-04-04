class WorkordersController < ApplicationController
  layout "application"
  before_action :authenticate_user!
  before_action :set_workorder, only: [:show, :edit, :update, :destroy]
  before_action :no_proletarians
  # GET /workorders
  def index
    status_due_date
    list_of_the_day = !params[:list_of_the_day].nil? ? params[:list_of_the_day] == "true" : false
    if params[:technician].nil? && params[:manager].nil? & params[:status].nil? & params[:date_planned].nil?
      if list_of_the_day
        @workorders = Workorder.where(date_planned: DateTime.now.all_day)
      else
        @workorders = Workorder.all
      end
    else
      query = {}
      @tech = params[:technician][:id].blank? ? "" : query[:technician] = User.find(params[:technician][:id])
      @manager =  params[:manager][:id].blank? ? "" : query[:manager] = User.find(params[:manager][:id])
      @status = params[:status].blank? ? "" : query[:status] = params[:status]
      if params[:due_date_selector] == @due_date_selector[1]
        @date_planned = params[:date_planned].blank? ? "" : query[:date_planned] = DateTime.parse(params[:date_planned]["{}(1i)"] +"-"+ params[:date_planned]["{}(2i)"] +"-"+ params[:date_planned]["{}(3i)"]).all_day
      end
      # p query[:date_planned]
      @workorders = Workorder.where(query)
    end
  end

  def show
  end

  def filter
     status_due_date
  end

  def new
    @workorder = Workorder.new
  end

  def edit
  end

  def create
    @workorder = Workorder.new(workorder_params)

    if @workorder.save
      UserMailer.workorder_alert(@workorder).deliver_now
      redirect_to @workorder, notice: 'Workorder was successfully created.'

    else
      render :new
    end
  end

  def update
    if @workorder.update!(workorder_params)
      redirect_to @workorder, notice: 'Workorder was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /workorders/1
  def destroy
    @workorder.destroy
    redirect_to workorders_url, notice: 'Workorder was successfully destroyed.'
  end

  private
    def no_proletarians
      if current_user && current_user.user_type == "technician"
          redirect_to interventions_path
      end
    end
    def status_due_date
      @due_date_selector = ["Do not filter on due date", "Filter on due date"]
    end

    def set_workorder
      @workorder = Workorder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workorder_params
      params.require(:workorder).permit(:address, :description, :date_planned, :date_done, :report, :status, :manager_id, :technician_id)
    end
end
