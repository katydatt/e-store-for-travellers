class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :category

end
