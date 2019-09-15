class Review < ApplicationRecord
  belongs_to :album
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
