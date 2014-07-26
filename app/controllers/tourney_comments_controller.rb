class TourneyCommentsController < ApplicationController
  before_action :set_tourney_comment, only: [:show, :edit, :update, :destroy]

  # GET /tourney_comments
  def index
    @tourney_comments = TourneyComment.all
  end

  # GET /tourney_comments/1
  def show
  end

  # GET /tourney_comments/new
  def new
    @tourney_comment = TourneyComment.new
  end

  # GET /tourney_comments/1/edit
  def edit
  end

  # POST /tourney_comments
  def create
    @tourney_comment = TourneyComment.new(tourney_comment_params)

    if @tourney_comment.save
      redirect_to @tourney_comment, notice: 'Tourney comment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tourney_comments/1
  def update
    if @tourney_comment.update(tourney_comment_params)
      redirect_to @tourney_comment, notice: 'Tourney comment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tourney_comments/1
  def destroy
    @tourney_comment.destroy
    redirect_to tourney_comments_url, notice: 'Tourney comment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourney_comment
      @tourney_comment = TourneyComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tourney_comment_params
      #params[:tourney_comment]
      params.require(:tourney_comment).permit(:message, :user_id, :tourney_id)
    end
end
