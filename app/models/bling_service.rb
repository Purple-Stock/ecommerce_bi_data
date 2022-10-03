class BlingService
  @apikey = ENV['BLING']

  def self.get_products
    @products = []
    @stock_quantity = 0
    for count in (1..5) do
      @all_products = HTTParty.get("https://bling.com.br/Api/v2/produtos/page=#{count}/json/?apikey=#{@apikey}&estoque=S",
                                   headers: { content: 'application/json' })
      @all_products['retorno']['produtos'].each do |product|
        if product['produto']['depositos'][0]['deposito']['saldo'] < 1000 && product['produto']['depositos'][0]['deposito']['saldo'] > 800 && product['produto']['estrutura'].nil?
          @products << { "codigo": product['produto']['codigo'], "descricao": product['produto']['descricao'],
                         "estoqueAtual": product['produto']['depositos'][0]['deposito']['saldo'] - 1000, "estoqueVirtual": product['produto']['estoqueAtual'] - 1000 }
        end
      end
    end
    @products.sort_by { |p| p[:estoqueAtual] }
  end

  def self.get_stock_error
    @products = []
    @stock_quantity = 0
    for count in (1..5) do
      @all_products = HTTParty.get("https://bling.com.br/Api/v2/produtos/page=#{count}/json/?apikey=#{@apikey}&estoque=S",
                                   headers: { content: 'application/json' })
      @all_products['retorno']['produtos'].each do |product|
        if product['produto']['depositos'][0]['deposito']['saldo'] < 200 && product['produto']['estrutura'].nil?
          @products << { "codigo": product['produto']['codigo'], "descricao": product['produto']['descricao'],
                         "estoqueAtual": product['produto']['depositos'][0]['deposito']['saldo']}
        end
      end
    end
    @products.sort_by { |p| p[:estoqueAtual] }
  end

  def self.get_all_stock
    @products = []
    @stock_quantity = 0
    for count in (1..5) do
      @all_products = HTTParty.get("https://bling.com.br/Api/v2/produtos/page=#{count}/json/?apikey=#{@apikey}&estoque=S",
                                   headers: { content: 'application/json' })
      @all_products['retorno']['produtos'].each do |product|
        if product['produto']['estrutura'].nil? && product['produto']['variacoes'].nil?
          @products << { "codigo": product['produto']['codigo'], "descricao": product['produto']['descricao'],
                         "estoqueAtual": product['produto']['depositos'][0]['deposito']['saldo']}
        end
      end
    end
    @products.sort_by { |p| p[:codigo] }
  end
end
