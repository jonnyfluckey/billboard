class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :chart_datum, optional: true
end
