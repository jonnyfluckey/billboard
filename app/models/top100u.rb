class Top100u < ApplicationRecord

  has_many :songs
  has_many :artists, through: :songs
end
