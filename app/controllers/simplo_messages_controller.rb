class SimploMessagesController < ApplicationController
  before_action :set_simplo_message, only: %i[ show edit update destroy ]

  # GET /simplo_messages or /simplo_messages.json
  def index
    @simplo_messages = SimploMessage.all
  end

  # GET /simplo_messages/1 or /simplo_messages/1.json
  def show
  end

  # GET /simplo_messages/new
  def new
    @simplo_message = SimploMessage.new
  end

  # GET /simplo_messages/1/edit
  def edit
  end

  # POST /simplo_messages or /simplo_messages.json
  def create
    @simplo_message = SimploMessage.new(simplo_message_params)

    respond_to do |format|
      if @simplo_message.save
        format.html { redirect_to simplo_message_url(@simplo_message), notice: "Simplo message was successfully created." }
        format.json { render :show, status: :created, location: @simplo_message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @simplo_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simplo_messages/1 or /simplo_messages/1.json
  def update
    respond_to do |format|
      if @simplo_message.update(simplo_message_params)
        format.html { redirect_to simplo_message_url(@simplo_message), notice: "Simplo message was successfully updated." }
        format.json { render :show, status: :ok, location: @simplo_message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @simplo_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simplo_messages/1 or /simplo_messages/1.json
  def destroy
    @simplo_message.destroy

    respond_to do |format|
      format.html { redirect_to simplo_messages_url, notice: "Simplo message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simplo_message
      @simplo_message = SimploMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def simplo_message_params
      params.require(:simplo_message).permit(:status_code, :message)
    end
end
