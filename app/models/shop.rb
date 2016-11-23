class Shop < ApplicationRecord
  belongs_to :organization
  has_many :employees
  has_many :plannings
  has_many :shifts
end
