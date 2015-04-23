class Person < ActiveRecord::Base
  has_many :interactions
	validates :name, :email, presence: true
	validates :email, uniqueness: true
end
