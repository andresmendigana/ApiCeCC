class User < ApplicationRecord
  has_many :activities
  has_many :reports
  validates :name, presence: true
  validates :email, presence: true
end
