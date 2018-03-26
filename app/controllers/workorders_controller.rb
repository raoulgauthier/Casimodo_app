class WorkordersController < ApplicationController
  layout "scaffold"

  before_action :set_workorder, only: [:show, :edit, :update, :destroy]

  # GET /workorders
  def index
    @workorders = Workorder.all
  end

  # GET /workorders/1
  def show
  end

  # GET /workorders/new
  def new
    @workorder = Workorder.new
  end

  # GET /workorders/1/edit
  def edit
  end

  # POST /workorders
  def create
    @workorder = Workorder.new(workorder_params)

    if @workorder.save
      redirect_to @workorder, notice: 'Workorder was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /workorders/1
  def update
    if @workorder.update(workorder_params)
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
    # Use callbacks to share common setup or constraints between actions.
    def set_workorder
      @workorder = Workorder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workorder_params
      params.require(:workorder).permit(:address, :description, :date_planned, :date_done, :report, :status, :manager_id, :technician_id)
    end
end
