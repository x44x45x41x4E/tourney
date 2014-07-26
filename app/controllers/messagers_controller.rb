class MessagersController < ApplicationController
  before_action :set_messager, only: [:show, :edit, :update, :destroy]

  # GET /messagers
  def index
    @messagers = Messager.all
  end

  # GET /messagers/1
  def show
  end

  # GET /messagers/new
  def new
    @messager = Messager.new
  end

  # GET /messagers/1/edit
  def edit
  end

  # POST /messagers
  def create
    @messager = Messager.new(messager_params)

    if @messager.save
      redirect_to @messager, notice: 'Messager was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /messagers/1
  def update
    if @messager.update(messager_params)
      redirect_to @messager, notice: 'Messager was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /messagers/1
  def destroy
    @messager.destroy
    redirect_to messagers_url, notice: 'Messager was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messager
      @messager = Messager.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def messager_params
      params.require(:messager).permit(:message_type, :user_id, :shortcode, :message_id, :message, :client_id, :secret_key)
    end
end
