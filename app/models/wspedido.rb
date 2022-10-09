class Wspedido < ApplicationRecord
  def self.integrate_orders
    @order_page = Typhoeus.get("#{@host}/ws/wspedidos.json",
                               headers: { content: 'application/json',
                                          Appkey: @app_key.to_s })
                          .response_body
    hydra = Typhoeus::Hydra.hydra

    order_page_requests = (1..@order_page['pagination']['page_count']).map do |i|
      order_page_request = Typhoeus::Request.new("#{@host}/ws/wspedidos.json?page=#{i}",
                                 headers: { content: 'application/json',
                                            Appkey: @app_key.to_s })
      hydra.queue(@order_page)

      order_page_request
    end
    # executa as requisições acima em paralelo
    hydra.run

    order_page_requests.each do |order_page_response|
      order_page_response.body['result'].each do |order_page|
        create_wspedido(order_page)
      end
    end
  end

  def self.webhook_save(order)
    begin
      Wspedido.create(id: order['Wspedido']['id'],
                      numero: order['Wspedido']['numero'].to_i,
                      data_pedido: DateTime.parse(order['Wspedido']['data_pedido']),
                      pedidostatus_id: order['Wspedido']['pedidostatus_id'],
                      cliente_tipo: order['Wspedido']['cliente_tipo'],
                      cliente_cpfcnpj: order['Wspedido']['cliente_cpfcnpj'].delete('.-'),
                      cliente_razaosocial: order['Wspedido']['cliente_razaosocial'],
                      cliente_ie: order['Wspedido']['cliente_ie'],
                      cliente_data_nascimento: order['Wspedido']['cliente_data_nascimento'],
                      cliente_logradouro: order['Wspedido']['cliente_logradouro'],
                      cliente_numero: order['Wspedido']['cliente_numero'],
                      cliente_informacoes_adicionais: order['Wspedido']['cliente_informacoes_adicionais'],
                      cliente_bairro: order['Wspedido']['cliente_bairro'],
                      cliente_cidade: order['Wspedido']['cliente_cidade'],
                      cliente_estado: order['Wspedido']['cliente_estado'],
                      cliente_pais: order['Wspedido']['cliente_pais'],
                      cliente_cep: order['Wspedido']['cliente_cep'],
                      cliente_telefone: order['Wspedido']['cliente_telefone'],
                      cliente_telefone_comercial: order['Wspedido']['cliente_telefone_comercial'],
                      cliente_celular: order['Wspedido']['cliente_celular'],
                      cliente_email: order['Wspedido']['cliente_email'],
                      cliente_observacao: order['Wspedido']['cliente_observacao'],
                      entrega_cpfcnpj: order['Wspedido']['entrega_cpfcnpj'].delete('.-'),
                      entrega_razaosocial: order['Wspedido']['entrega_razaosocial'],
                      entrega_ie: order['Wspedido']['entrega_ie'],
                      entrega_data_nascimento: order['Wspedido']['entrega_data_nascimento'],
                      entrega_logradouro: order['Wspedido']['entrega_logradouro'],
                      entrega_numero: order['Wspedido']['entrega_numero'],
                      entrega_informacoes_adicionais: order['Wspedido']['entrega_informacoes_adicionais'],
                      entrega_bairro: order['Wspedido']['entrega_bairro'],
                      entrega_cidade: order['Wspedido']['entrega_cidade'],
                      entrega_estado: order['Wspedido']['entrega_estado'],
                      entrega_pais: order['Wspedido']['entrega_pais'],
                      entrega_cep: order['Wspedido']['entrega_cep'],
                      entrega_telefone: order['Wspedido']['entrega_telefone'],
                      entrega_telefone_comercial: order['Wspedido']['entrega_telefone_comercial'],
                      entrega_celular: order['Wspedido']['entrega_celular'],
                      entrega_email: order['Wspedido']['entrega_email'],
                      envio_prazo: order['Wspedido']['envio_prazo'],
                      envio_prazo_descricao: order['Wspedido']['envio_prazo_descricao'],
                      entrega_prazo: order['Wspedido']['entrega_prazo'],
                      envio_servico_id: order['Wspedido']['envio_servico_id'],
                      envio_servico: order['Wspedido']['envio_servico'],
                      envio_codigo_objeto: order['Wspedido']['envio_codigo_objeto'],
                      pagamento_integrador_id: order['Wspedido']['pagamento_integrador_id'],
                      pagamento_forma: order['Wspedido']['pagamento_forma'],
                      referencia_venda: order['Wspedido']['referencia_venda'],
                      nota_fiscal: order['Wspedido']['nota_fiscal'],
                      nota_fiscal_serie: order['Wspedido']['nota_fiscal_serie'],
                      nota_fiscal_chave: order['Wspedido']['nota_fiscal_chave'],
                      nota_fiscal_data: order['Wspedido']['nota_fiscal_data'],
                      total_pedido: order['Wspedido']['total_pedido'],
                      desconto_avista: order['Wspedido']['desconto_avista'],
                      total_descontos: order['Wspedido']['total_descontos'],
                      total_acrescimos: order['Wspedido']['total_acrescimos'],
                      total_frete: order['Wspedido']['total_frete'],
                      total_produtos: order['Wspedido']['total_produtos'],
                      total_peso: order['Wspedido']['total_peso'],
                      url_rastreamento: order['Wspedido']['url_rastreamento'])
    rescue ArgumentError
      puts 'erro'
    end
    order['Item'].each do |item|
      Item.create(item_id: item['id'],
                  pedido_id: item['pedido_id'],
                  produto_id: item['produto_id'].to_i,
                  produto_estoque_id: item['produto_estoque_id'],
                  sku: item['sku'],
                  nome_produto: item['nome_produto'],
                  slug_produto: item['slug_produto'],
                  origem_mercadoria: item['origem_mercadoria'],
                  tempo_producao: item['tempo_producao'],
                  ncm: item['ncm'],
                  combinacoes: item['combinacoes'],
                  perguntas: item['perguntas'],
                  quantidade: item['quantidade'],
                  unidade_medida_id: item['unidade_medida_id'],
                  valor_unitario: item['valor_unitario'],
                  valor_total: item['valor_total'],
                  altura: item['altura'],
                  largura: item['largura'],
                  comprimento: item['comprimento'],
                  peso: item['peso'],
                  valor_frete_unitario: item['valor_frete_unitario'],
                  valor_frete_adicional: item['valor_frete_adicional'],
                  objeto_codigo_rastreamento: item['objeto_codigo_rastreamento'],
                  descricao: item['descricao'],
                  image: item['image'],
                  presente: item['presente'],
                  total_presente: item['total_presente'],
                  desconto: item['desconto'],
                  desconto_percentual: item['desconto_percentual'],
                  url_rastreamento_item: item['url_rastreamento_item'])
    rescue ArgumentError
      puts 'erro'
    end
  end

  def self.update_status
    @order_page = HTTParty.get("#{@host}/ws/wspedidos.json",
                               headers: { content: 'application/json',
                                          Appkey: @app_key.to_s })
    (1..@order_page['pagination']['page_count']).each do |i|
      @order_page = HTTParty.get("#{@host}/ws/wspedidos.json?page=#{i}",
                                 headers: { content: 'application/json',
                                            Appkey: @app_key.to_s })
      @order_page['result'].each do |order_page|
        @pedido = Wspedido.find_by(id: order_page['Wspedido']['id'].to_i)
        if @pedido.present?
          if @pedido.pedidostatus_id != order_page['Wspedido']['pedidostatus_id']
            @pedido.update(pedidostatus_id: order_page['Wspedido']['pedidostatus_id'])
          else
            p 'nothing to change'
          end
        else
          @wspedido = Wspedido.webhook_save(order_page)
        end
      end
    end
  end

  def self.update_order_status(order_number, order_status)
    id = (order_number.to_i + 1).to_s
    data = { 'Wspedido': { 'Status': { 'id': order_status } } }
    begin
      HTTParty.put("#{@host}/ws/wspedidos/#{id}.json",
                   body: data,
                   headers: { content: 'application/json',
                              Appkey: @app_key })
    rescue ArgumentError
      puts 'erro'
    end
  end

  def self.update_postal_code(order_number, post_code)
    id = (order_number.to_i + 1).to_s
    data = { 'Wspedido': { 'Entrega': { 'rastreamento': post_code } } }
    begin
      HTTParty.put("#{@host}/ws/wspedidos/#{id}.json",
                   body: data,
                   headers: { content: 'application/json',
                              Appkey: @app_key })
    rescue ArgumentError
      puts 'erro'
    end
  end

  private

  def create_wspedido(order_page)
      begin
        Wspedido.create(id: order_page['Wspedido']['id'],
                        numero: order_page['Wspedido']['numero'].to_i,
                        data_pedido: DateTime.parse(order_page['Wspedido']['data_pedido']),
                        pedidostatus_id: order_page['Wspedido']['pedidostatus_id'],
                        cliente_tipo: order_page['Wspedido']['cliente_tipo'],
                        cliente_cpfcnpj: order_page['Wspedido']['cliente_cpfcnpj'].delete('.-'),
                        cliente_razaosocial: order_page['Wspedido']['cliente_razaosocial'],
                        cliente_ie: order_page['Wspedido']['cliente_ie'],
                        cliente_data_nascimento: order_page['Wspedido']['cliente_data_nascimento'],
                        cliente_logradouro: order_page['Wspedido']['cliente_logradouro'],
                        cliente_numero: order_page['Wspedido']['cliente_numero'],
                        cliente_informacoes_adicionais: order_page['Wspedido']['cliente_informacoes_adicionais'],
                        cliente_bairro: order_page['Wspedido']['cliente_bairro'],
                        cliente_cidade: order_page['Wspedido']['cliente_cidade'],
                        cliente_estado: order_page['Wspedido']['cliente_estado'],
                        cliente_pais: order_page['Wspedido']['cliente_pais'],
                        cliente_cep: order_page['Wspedido']['cliente_cep'],
                        cliente_telefone: order_page['Wspedido']['cliente_telefone'],
                        cliente_telefone_comercial: order_page['Wspedido']['cliente_telefone_comercial'],
                        cliente_celular: order_page['Wspedido']['cliente_celular'],
                        cliente_email: order_page['Wspedido']['cliente_email'],
                        cliente_observacao: order_page['Wspedido']['cliente_observacao'],
                        entrega_cpfcnpj: order_page['Wspedido']['entrega_cpfcnpj'].delete('.-'),
                        entrega_razaosocial: order_page['Wspedido']['entrega_razaosocial'],
                        entrega_ie: order_page['Wspedido']['entrega_ie'],
                        entrega_data_nascimento: order_page['Wspedido']['entrega_data_nascimento'],
                        entrega_logradouro: order_page['Wspedido']['entrega_logradouro'],
                        entrega_numero: order_page['Wspedido']['entrega_numero'],
                        entrega_informacoes_adicionais: order_page['Wspedido']['entrega_informacoes_adicionais'],
                        entrega_bairro: order_page['Wspedido']['entrega_bairro'],
                        entrega_cidade: order_page['Wspedido']['entrega_cidade'],
                        entrega_estado: order_page['Wspedido']['entrega_estado'],
                        entrega_pais: order_page['Wspedido']['entrega_pais'],
                        entrega_cep: order_page['Wspedido']['entrega_cep'],
                        entrega_telefone: order_page['Wspedido']['entrega_telefone'],
                        entrega_telefone_comercial: order_page['Wspedido']['entrega_telefone_comercial'],
                        entrega_celular: order_page['Wspedido']['entrega_celular'],
                        entrega_email: order_page['Wspedido']['entrega_email'],
                        envio_prazo: order_page['Wspedido']['envio_prazo'],
                        envio_prazo_descricao: order_page['Wspedido']['envio_prazo_descricao'],
                        entrega_prazo: order_page['Wspedido']['entrega_prazo'],
                        envio_servico_id: order_page['Wspedido']['envio_servico_id'],
                        envio_servico: order_page['Wspedido']['envio_servico'],
                        envio_codigo_objeto: order_page['Wspedido']['envio_codigo_objeto'],
                        pagamento_integrador_id: order_page['Wspedido']['pagamento_integrador_id'],
                        pagamento_forma: order_page['Wspedido']['pagamento_forma'],
                        referencia_venda: order_page['Wspedido']['referencia_venda'],
                        nota_fiscal: order_page['Wspedido']['nota_fiscal'],
                        nota_fiscal_serie: order_page['Wspedido']['nota_fiscal_serie'],
                        nota_fiscal_chave: order_page['Wspedido']['nota_fiscal_chave'],
                        nota_fiscal_data: order_page['Wspedido']['nota_fiscal_data'],
                        total_pedido: order_page['Wspedido']['total_pedido'],
                        desconto_avista: order_page['Wspedido']['desconto_avista'],
                        total_descontos: order_page['Wspedido']['total_descontos'],
                        total_acrescimos: order_page['Wspedido']['total_acrescimos'],
                        total_frete: order_page['Wspedido']['total_frete'],
                        total_produtos: order_page['Wspedido']['total_produtos'],
                        total_peso: order_page['Wspedido']['total_peso'],
                        url_rastreamento: order_page['Wspedido']['url_rastreamento'])
      rescue ArgumentError
        puts 'erro'
      end
      order_page['Item'].each do |item|
        Item.create(item_id: item['id'],
                    pedido_id: item['pedido_id'],
                    produto_id: item['produto_id'].to_i,
                    produto_estoque_id: item['produto_estoque_id'],
                    sku: item['sku'],
                    nome_produto: item['nome_produto'],
                    slug_produto: item['slug_produto'],
                    origem_mercadoria: item['origem_mercadoria'],
                    tempo_producao: item['tempo_producao'],
                    ncm: item['ncm'],
                    combinacoes: item['combinacoes'],
                    perguntas: item['perguntas'],
                    quantidade: item['quantidade'],
                    unidade_medida_id: item['unidade_medida_id'],
                    valor_unitario: item['valor_unitario'],
                    valor_total: item['valor_total'],
                    altura: item['altura'],
                    largura: item['largura'],
                    comprimento: item['comprimento'],
                    peso: item['peso'],
                    valor_frete_unitario: item['valor_frete_unitario'],
                    valor_frete_adicional: item['valor_frete_adicional'],
                    objeto_codigo_rastreamento: item['objeto_codigo_rastreamento'],
                    descricao: item['descricao'],
                    image: item['image'],
                    presente: item['presente'],
                    total_presente: item['total_presente'],
                    desconto: item['desconto'],
                    desconto_percentual: item['desconto_percentual'],
                    url_rastreamento_item: item['url_rastreamento_item'])
      rescue ArgumentError
        puts 'erro'
      end
    end
  end
end
