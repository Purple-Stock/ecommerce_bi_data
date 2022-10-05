class MessagesController < ApplicationController
  before_action :set_messages, only: %i[filter_index]

  def filter_index; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_messages
    @orders = Services::SimploServices::FindWspedidoService.filter_index(params[:order_status])
  end

  # Only allow a list of trusted parameters through.
  def messages_params
    params.fetch(:messages, {})
  end
end