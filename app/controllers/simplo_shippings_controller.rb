class SimploShippingsController < ApplicationController

  def index; end

  def receive_orders_id
    flash[:notice] = Services::SimploServices::WspedidoService.calculate_shipping_orders(params[:orders_id])
    render simplo_shippings_index_path
  end

  private

  # Only allow a list of trusted parameters through.
  def messages_params
    params.fetch(:shippings, {})
  end
end