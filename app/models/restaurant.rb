class Restaurant < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 25 }
  validates :state, presence: true, length: { maximum: 25 }
  validates :zip, presence: true, length: { is: 5 }, numericality: { only_integer: true }

  has_many :reviews
end
