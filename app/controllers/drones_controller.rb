class DronesController < ApplicationController
  before_action :set_drone, only: [:show, :update, :destroy]

  # GET /drones
  def index
    @drones = Drone.all

    render json: @drones
  end

  # GET /drones/1
  def show
    render json: @drone
  end

  # POST /drones
  def create
    @drone = Drone.new(drone_params)

    if @drone.save
      render json: @drone, status: :created, location: @drone
    else
      render json: @drone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drones/1
  def update
    if @drone.update(drone_params)
      render json: @drone
    else
      render json: @drone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drones/1
  def destroy
    @drone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drone
      @drone = Drone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drone_params
      params.require(:drone).permit(:name, :photo, :weight, :skills, :speed, :user_id, race_ids: [])
    end
end
