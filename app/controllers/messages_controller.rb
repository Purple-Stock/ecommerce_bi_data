class MessagesController < ApplicationController
  before_action :set_messages, only: %i[filter_index]

  def filter_index
    @status_codes = Services::SimploServices::WspedidoService.status_codes
  end

  def update_status_code
    Wspedido.update_last_status
    respond_to do |format|
      format.html { redirect_to filter_index_path(1), notice: 'Status dos pedidos atualizados'}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_messages
    @orders = Services::SimploServices::WspedidoService.filter_index(params[:order_status])
  end

  # Only allow a list of trusted parameters through.
  def messages_params
    params.fetch(:messages, {})
  end
end