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

    @message_type = Messager.message_type("SEND")
    @mobile_number = Messager.User.find(id).contact
    @sc = Messager.create { short("292908769")
    @m_id = Messager.message_id("12345678123456781234567812345678")
    @message = Messager.message
    @c_id = Messager.client_id("20979ad86da809c5aec43d96d18d603b7f75248d7bf57ae67101c972f57c8e02")
    @secret_key = Messager.secret_key("b08d0de99c40099bba90a1673eb6bb7557d078dd57f4be19616dfd3f8920e374")

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
