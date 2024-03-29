class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  # validates_uniqueness_of :name, presence: true, allow_blank: false # uniquness: true
  has_many :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :ingredients, through: :doses
end
