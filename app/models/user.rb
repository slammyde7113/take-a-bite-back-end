# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :menu_items, through: :profiles
  has_many :profiles
end
