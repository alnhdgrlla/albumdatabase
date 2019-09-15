class Artist < ApplicationRecord
  has_many :albums
  has_many :songs, through: :albums
  validates :name, presence: true, uniqueness: true
  validates :genre, presence: true, uniqueness: true
end
