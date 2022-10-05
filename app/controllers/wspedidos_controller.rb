class WspedidosController < ApplicationController
  before_action :set_wspedido, only: %i[show edit update destroy]

  # GET /wspedidos or /wspedidos.json
  def index
    @wspedidos = Wspedido.all
  end

  # GET /wspedidos/1 or /wspedidos/1.json
  def show; end

  # GET /wspedidos/new
  def new
    @wspedido = Wspedido.new
  end

  # GET /wspedidos/1/edit
  def edit; end

  # POST /wspedidos or /wspedidos.json
  def create
    @wspedido = Wspedido.new(wspedido_params)

    respond_to do |format|
      if @wspedido.save
        format.html { redirect_to wspedido_url(@wspedido), notice: 'Wspedido was successfully created.' }
        format.json { render :show, status: :created, location: @wspedido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wspedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wspedidos/1 or /wspedidos/1.json
  def update
    respond_to do |format|
      if @wspedido.update(wspedido_params)
        format.html { redirect_to wspedido_url(@wspedido), notice: 'Wspedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @wspedido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wspedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wspedidos/1 or /wspedidos/1.json
  def destroy
    @wspedido.destroy

    respond_to do |format|
      format.html { redirect_to wspedidos_url, notice: 'Wspedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wspedido
    @wspedido = Wspedido.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wspedido_params
    params.fetch(:wspedido, {})
  end
end
