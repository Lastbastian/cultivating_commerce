class Buyer < User
  has_many :purchases, class_name: 'Transaction', foreign_key: 'buyer_id'
end
