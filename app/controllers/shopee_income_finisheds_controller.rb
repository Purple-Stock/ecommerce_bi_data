class ShopeeIncomeFinishedsController < ApplicationController
  before_action :set_shopee_income_finished, only: %i[ show edit update destroy ]

  # GET /shopee_income_finisheds or /shopee_income_finisheds.json
  def index
    @shopee_income_finisheds = ShopeeIncomeFinished.all
  end

  # GET /shopee_income_finisheds/1 or /shopee_income_finisheds/1.json
  def show
  end

  # GET /shopee_income_finisheds/new
  def new
    @shopee_income_finished = ShopeeIncomeFinished.new
  end

  # GET /shopee_income_finisheds/1/edit
  def edit
  end

  # POST /shopee_income_finisheds or /shopee_income_finisheds.json
  def create
    @shopee_income_finished = ShopeeIncomeFinished.new(shopee_income_finished_params)

    respond_to do |format|
      if @shopee_income_finished.save
        format.html { redirect_to shopee_income_finished_url(@shopee_income_finished), notice: "Shopee income finished was successfully created." }
        format.json { render :show, status: :created, location: @shopee_income_finished }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shopee_income_finished.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopee_income_finisheds/1 or /shopee_income_finisheds/1.json
  def update
    respond_to do |format|
      if @shopee_income_finished.update(shopee_income_finished_params)
        format.html { redirect_to shopee_income_finished_url(@shopee_income_finished), notice: "Shopee income finished was successfully updated." }
        format.json { render :show, status: :ok, location: @shopee_income_finished }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopee_income_finished.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopee_income_finisheds/1 or /shopee_income_finisheds/1.json
  def destroy
    @shopee_income_finished.destroy

    respond_to do |format|
      format.html { redirect_to shopee_income_finisheds_url, notice: "Shopee income finished was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopee_income_finished
      @shopee_income_finished = ShopeeIncomeFinished.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopee_income_finished_params
      params.require(:shopee_income_finished).permit(:id_pedido, :id_reembolso, :nome_usuario_comprador, :data_criacao_pedido, :metodo_pagamento_comprador, :data_conclusao_pagamento, :preco_original_produto, :promocao_seu_produto, :valor_reembolso_comprador, :desconto_produto_pela_shopee, :cupom, :cashback_moeda_absorvida_vendedor, :taxa_frete_paga_pelo_comprador, :desconto_frete_pela_shopee, :taxa_frete_real_paga_pela_Shopee, :reverse_shipping_Fee, :taxa_comissao, :taxa_servico, :taxa_transacao, :quantia_total_lancada, :codigo_cupom, :compensacao_perdida, :peso_total_real_por_pedido, :promocao_taxa_frete_pelo_vendedor, :shipping_provider, :nome_transportadora, :account, :hash_id)
    end
end
