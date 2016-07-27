class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true,
    length: {
      maximum: 76,
      minimum: 3,
      too_long: "%{count} characters is the maximum number of characters allowed",
      too_short: "Must be at least %{count} characters long" }
  validates :address, presence: true
  validates :description, presence: true,
    length: {
    maximum: 1000,
    minimum: 3,
    too_long: "%{count} characters is the maximum number of characters allowed",
    too_short: "Must be at least %{count} characters long" }



end
