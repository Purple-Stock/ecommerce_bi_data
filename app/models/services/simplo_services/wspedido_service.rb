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
          'Cancelado' => '4'
         }
      end
    end
  end
end
