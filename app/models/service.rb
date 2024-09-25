# frozen_string_literal: true

class Service < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :address_1, presence: true
  validates :province, presence: true
  validates :country, presence: true
end
