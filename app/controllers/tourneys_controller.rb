class TourneysController < ApplicationController
  before_action :set_tourney, only: [:show, :edit, :update, :destroy]

  # GET /tourneys
  def index
    @tourneys = Tourney.all
    @tourney_comment = TourneyComment.new
  end

  # GET /tourneys/1
  def show
  end

  # GET /tourneys/new
  def new
    @tourney = Tourney.new
  end

  # GET /tourneys/1/edit
  def edit
  end

  # POST /tourneys
  def create
    @tourney = Tourney.new(tourney_params)

    if @tourney.save
      redirect_to @tourney, notice: 'Tourney was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tourneys/1
  def update
    if @tourney.update(tourney_params)
      redirect_to @tourney, notice: 'Tourney was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tourneys/1
  def destroy
    @tourney.destroy
    redirect_to tourneys_url, notice: 'Tourney was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourney
      @tourney = Tourney.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tourney_params
      params.require(:tourney).permit(:title, :desc, :start_date, :end_date, :user_id, :venue_id, :game_type_id, :tourney_type_id, :game_id)
    end
end
