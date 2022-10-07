module Services
  module SimploServices
    class WspedidoService
      def self.filter_index(order_status)
        @orders = Wspedido.where(pedidostatus_id: order_status)
      end

      def self.status_codes
        { 'Seu pedido foi criado! Aguardamos o pagamento' => '1',
          'Aguardando Pagamento' => '24',
          'Pago' => '2',
          'Pedidos impressos São Paulo' => '35',
          'PEDIDO FABRICAÇÃO' => '40',
          'Enviado' => '23',
          'Entregue' => '3',
          'Solicitação de troca ou devolução' => '29',
          'Produto Devolvido À Loja' => '38',
          'Pedido bate-volta' => '37',
          'Cancelado' => '4' }
      end

      def self.calculate_shipping_orders(orders_id)
        orders_array = orders_id.split(',').map { |splitted| splitted.gsub(' ', '') }
        @orders = Wspedido.where(numero: orders_array)
        @orders.filter_map { |e| e[:total_frete].to_f }.sum
      end
    end
  end
end
