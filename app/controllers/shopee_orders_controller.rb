class ShopeeOrdersController < ApplicationController
  before_action :set_shopee_order, only: %i[ show edit update destroy ]

  # GET /shopee_orders or /shopee_orders.json
  def index
    @shopee_orders = ShopeeOrder.all
  end

  # GET /shopee_orders/1 or /shopee_orders/1.json
  def show
  end

  # GET /shopee_orders/new
  def new
    @shopee_order = ShopeeOrder.new
  end

  # GET /shopee_orders/1/edit
  def edit
  end

  # POST /shopee_orders or /shopee_orders.json
  def create
    @shopee_order = ShopeeOrder.new(shopee_order_params)

    respond_to do |format|
      if @shopee_order.save
        format.html { redirect_to shopee_order_url(@shopee_order), notice: "Shopee order was successfully created." }
        format.json { render :show, status: :created, location: @shopee_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shopee_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopee_orders/1 or /shopee_orders/1.json
  def update
    respond_to do |format|
      if @shopee_order.update(shopee_order_params)
        format.html { redirect_to shopee_order_url(@shopee_order), notice: "Shopee order was successfully updated." }
        format.json { render :show, status: :ok, location: @shopee_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shopee_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopee_orders/1 or /shopee_orders/1.json
  def destroy
    @shopee_order.destroy

    respond_to do |format|
      format.html { redirect_to shopee_orders_url, notice: "Shopee order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopee_order
      @shopee_order = ShopeeOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopee_order_params
      params.require(:shopee_order).permit(:id_pedido, :status_pedido, :cancelar_motivo, :status_devolucao_reembolso, :numero_rastreamento, :opcao_envio, :metodo_envio, :data_prevista_envio, :tempo_envio, :data_criacao_pedido, :hora_pagamento_pedido, :numero_referência_sku_principal, :nome_produto, :numero_referencia_sku, :nome_variacao, :preco_original, :preco_acordado, :quantidade, :subtotal_produto, :desconto_vendedor, :desconto_vendedor_2, :reembolso_shopee, :peso_total_sku, :numero_produtos_pedidos, :peso_total_pedido, :codigo_cupom, :cupom_vendedor, :seller_absorbed_coin_cashback, :cupom_shopee, :indicador_leve_mais_menos, :desconto_shopee_leve_mais_menos, :desconto_leve_mais_menos_vendedor, :compensar_moedas_shopee, :total_descontado_cartao_credito, :valor_total, :taxa_envio_pagas_pelo_comprador, :desconto_frete_aproximado, :taxa_envio_reversa, :taxa_transacao, :taxa_comissao, :taxa_servico, :total_global, :valor_estimado_frete, :nome_usuário_comprador, :nome_destinatario, :telefone, :cpf_comprador, :endereco_entrega, :cidade_1, :bairro, :cidade, :uf, :pais, :cep, :observacao_comprador, :hora_completa_pedido, :nota)
    end
end
