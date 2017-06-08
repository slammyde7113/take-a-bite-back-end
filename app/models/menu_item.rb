class MenuItem < ApplicationRecord
  has_many :users, through: :profiles
  has_many :profiles
end
