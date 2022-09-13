class BlingService
  @apikey = ''

  def self.get_products
    @products = []
    for count in (1..4) do
      @all_products = HTTParty.get("https://bling.com.br/Api/v2/produtos/page=#{count}/json/?apikey=#{@apikey}&estoque=S",
                                   headers: { content: 'application/json' })
      @all_products['retorno']['produtos'].each do |product|
        if product['produto']['estoqueAtual'] < 1000 && product['produto']['estoqueAtual'] > 900
          @products << { "codigo": product['produto']['codigo'], "descricao": product['produto']['descricao'],
                         "estoqueAtual": product['produto']['estoqueAtual'] }
        end
      end
    end
    @products
  end
end
