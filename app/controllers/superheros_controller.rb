class SuperherosController < ApplicationController
  before_action :set_superhero, only: %i[ show update destroy ]

  # GET /superheros
  def index
    @superheros = Superhero.all

    render json: @superheros
  end

  # GET /superheros/1
  def show
    render json: @superhero
  end

  # POST /superheros
  def create
    @superhero = Superhero.new(superhero_params)

    if @superhero.save
      render json: @superhero, status: :created, location: @superhero
    else
      render json: @superhero.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /superheros/1
  def update
    if @superhero.update(superhero_params)
      render json: @superhero
    else
      render json: @superhero.errors, status: :unprocessable_entity
    end
  end

  # DELETE /superheros/1
  def destroy
    @superhero.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_superhero
      @superhero = Superhero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def superhero_params
      params.require(:superhero).permit(:name, :superpower)
    end
end
