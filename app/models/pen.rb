class Pen < ActiveRecord::Base
  has_many :animals
  validates :name, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
end
