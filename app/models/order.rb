class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :product_id, uniqueness: { scope: :user_id, message: 'Already have this power!!!' }
  validates :user_id, presence: true
end
