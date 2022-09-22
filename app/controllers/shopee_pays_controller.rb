class ShopeePaysController < ApplicationController
  before_action :set_shopee_pay, only: %i[ show edit update destroy ]

  # GET /shopee_pays or /shopee_pays.json
  def index
    @shopee_pays = ShopeePay.all
  end

  # GET /shopee_pays/1 or /shopee_pays/1.json
  def show
  end

  # GET /shopee_pays/new
  def new
    @shopee_pay = ShopeePay.new
  end

  # GET /shopee_pays/1/edit
  def edit
  end

  # POST /shopee_pays or /shopee_pays.json
  def create
    @shopee_pay = ShopeePay.new(shopee_pay_params)

    respond_to do |format|
      if @shopee_pay.save
        format.html { redirect_to shopee_pay_url(@shopee_pay), notice: "Shopee pay was successfully created." }
        format.json { render :show, status: :created, location: @shopee_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shopee_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopee_pays/1 or /shopee_pays/1.json
  def update
    respond_to do |format|
      if @shopee_pay.update(shopee_pay_params)
        format.html { redirect_to shopee_pay_url(@shopee_pay), notice: "Shopee pay was successfully updated." }
        format.json { render :show, status: :ok, location: @shopee_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopee_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopee_pays/1 or /shopee_pays/1.json
  def destroy
    @shopee_pay.destroy

    respond_to do |format|
      format.html { redirect_to shopee_pays_url, notice: "Shopee pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopee_pay
      @shopee_pay = ShopeePay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopee_pay_params
      params.require(:shopee_pay).permit(:data, :beneficiario, :pagamento, :descricao, :status, :saldo_carteira, :account)
    end
end
