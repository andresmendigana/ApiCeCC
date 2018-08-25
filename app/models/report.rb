class Report < ApplicationRecord
  has_many :histories
  belongs_to :user
end
