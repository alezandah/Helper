class Campaign < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :target_amount, presence: true
  validates :country, presence: true
  validates :region, presence: true
  validates :city, presence: true
  validates :category, presence: true
  validates :image, presence: true
  validates :story, presence: true

  has_many :contributions
end
