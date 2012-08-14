class Profile < ActiveRecord::Base
  
  attr_accessible :user_id, :fname, :lname, :gender, :dob, :country, :state, :city, :address, :pin, :phone, :image, :remote_image_url
  belongs_to :user
  validates :user_id, presence: true
  validates :fname, :lname, :gender, :dob, :country, :state, :city, :address, :pin, :phone, :presence => true
  mount_uploader :image, ImageUploader
end