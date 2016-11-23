class User < ApplicationRecord
  has_many :employees
  has_many :employee_organizations
  has_many :plannings
  has_many :shifts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
