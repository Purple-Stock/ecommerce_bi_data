class SimploShippingsController < ApplicationController

  def index; end

  def receive_orders_id
    sum = Services::SimploServices::WspedidoService.calculate_shipping_orders(params[:orders_id])
    message = "O valor do frete para o(s) pedido(s) #{params[:orders_id]} é: #{sum}"
    respond_to do |format|
      format.html  { redirect_to simplo_shippings_index_path, notice:  message}
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def messages_params
    params.fetch(:shippings, {})
  end
end