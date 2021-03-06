class Store < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :orders, through: :products
  has_one_attached :image
  has_many :sales, through: :products
  
end
