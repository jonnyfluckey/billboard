class Artist < ApplicationRecord

  has_many :songs
  has_many :top100s, through: :songs
  has_many :top100ss, through: :songs
  has_many :top100eurs, through: :songs
end
