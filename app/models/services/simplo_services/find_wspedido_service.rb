module Services
  module SimploServices
    class FindWspedidoService
      def self.filter_index(order_status)
        @orders = Wspedido.where(pedidostatus_id: order_status)
      end
    end
  end
end
