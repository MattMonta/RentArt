class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader

end
