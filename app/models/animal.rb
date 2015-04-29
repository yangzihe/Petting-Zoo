class Animal < ActiveRecord::Base
  belongs_to :pen
  validates :species, presence: true
end
