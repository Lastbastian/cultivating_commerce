class Item < ActiveRecord::Base
  belongs_to :storefront
  belongs_to :transaction
end
