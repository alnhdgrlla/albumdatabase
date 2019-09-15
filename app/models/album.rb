class Album < ApplicationRecord
  belongs_to :artist
  belongs_to :song
  validates :album_title, presence: true, uniqueness: true
  validates :year, presence: true
end
