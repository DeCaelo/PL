class Shift < ApplicationRecord
  belongs_to :user
  belongs_to :job
  belongs_to :planning
end
