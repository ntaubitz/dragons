class DragonsController < ApplicationController
  before_action :set_dragon, only: [:show, :update, :destroy]

  # GET /dragons
  def index
    @dragons = Dragon.all

    render json: @dragons
  end

  # GET /dragons/1
  def show
    render json: @dragon
  end

  # POST /dragons
  def create
    @dragon = Dragon.new(dragon_params)

    if @dragon.save
      render json: @dragon, status: :created, location: @dragon
    else
      render json: @dragon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dragons/1
  def update
    if @dragon.update(dragon_params)
      render json: @dragon
    else
      render json: @dragon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dragons/1
  def destroy
    @dragon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dragon
      @dragon = Dragon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dragon_params
      params.require(:dragon).permit(:name)
    end
end
