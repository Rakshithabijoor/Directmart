class Product < ApplicationRecord
  
 
  mount_uploader :image,ImageUploader
  
  private
  

end
