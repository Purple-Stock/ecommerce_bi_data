class ShopeeOrder < ApplicationRecord
  enum account: %i[Shopee_1 Shopee_2]
end
