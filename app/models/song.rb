class Song < ApplicationRecord

  belongs_to :artists
  belongs_to :top100s, optional: true
  belongs_to :top100us, optional: true
  belongs_to :top100eurs, optional: true
end
