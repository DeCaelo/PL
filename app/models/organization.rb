class Organization < ApplicationRecord
  has_many :employee_organizations
  has_many :shops
  has_many :shifts
end
