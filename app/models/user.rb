class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products, class_name: "Product", foreign_key: "user_id"
  has_many :orders, class_name: "Order", foreign_key: "user_id"
  has_many :ships, class_name: "Ship", foreign_key: "user_id"
  has_many :delivers, class_name: "Deliver", foreign_key: "user_id"
end
