class Interaction < ActiveRecord::Base
  belongs_to :person
  has_one :animal
end
