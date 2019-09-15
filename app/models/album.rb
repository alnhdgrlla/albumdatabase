class Album < ApplicationRecord
  has_many :reviews
  belongs_to :artist
  belongs_to :song
  validates :album_title, presence: true, uniqueness: true
  validates :year, presence: true
end
