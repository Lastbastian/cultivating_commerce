class Storefront < ActiveRecord::Base
  has_many :items
  belongs_to :seller, class: "User", foreign_key: 'seller_id'
end
