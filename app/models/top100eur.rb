class Top100eur < ApplicationRecord

  has_many :songs
  has_many :artists, through: :songs
  has_one :charts
end
