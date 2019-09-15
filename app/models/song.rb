class Song < ApplicationRecord
  has_many :albums
  has_many :artists, through: :albums
  validates :song_title, presence: true
end
