# frozen_string_literal: true

class Service < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :address_1, presence: true
  validates :state, presence: true
  validates :country, presence: true

  geocoded_by :address
  after_validation :geocode, if: :latitude.blank? && longitude.blank?

  def address
    [ address_1, city, state, city ].compact.join(", ")
  end
end
