class Project < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, length: { maximum: 150 }
  validates :interests, inclusion: { in: %w(Jam Collab Performace), message: "%{value} is not a valid interests" }
end
