class Seller < User  
  has_many :sales, class_name: 'Transaction', foreign_key: 'seller_id'
end
