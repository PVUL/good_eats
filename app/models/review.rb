class Review < ActiveRecord::Base
  validates :rating, presence: true, inclusion: { in: 1..5 }, length: { is: 1 }
  validates :body, presence: true, length: { maximum: 500 }

  belongs_to :restaurant
end
