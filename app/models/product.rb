class Product < ApplicationRecord
  
  belongs_to :user , class_name: "User", foreign_key: "user_id"
  has_many :order_items,dependent: :delete_all
  
  mount_uploader :image,ImageUploader
  
  private
  

end
