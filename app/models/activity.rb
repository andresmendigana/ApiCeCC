class Activity < ApplicationRecord
  has_many :organizers
  belongs_to :user
end
