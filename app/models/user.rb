class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :city, presence: true
  validates :age, presence: true
  validates :instruments, presence: true
  validates :interests, inclusion: { in: %w(Jam Collab Performace), message: "%{value} is not a valid interests" }
  has_many :projects, dependent: :destroy
end
