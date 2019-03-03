class Chart < ApplicationRecord

  has_many :songs, through: :top100s
  has_many :songs, through: :top100us
  has_many :songs, through: :top100eurs
end
