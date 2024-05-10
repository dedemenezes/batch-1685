class Doctor < ActiveRecord::Base
  has_many :interns
  # creates a method that retrieves ALL the interns
  has_many :consultations
  # creates a method that retrieves ALL the consultation
  has_many :patients, through: :consultations
  # creates a method that retrieves ALL the patients

  validates :last_name, presence: true # cannot be empty
  # validates :last_name, uniqueness: true
  validates :last_name, uniqueness: { scope: :first_name }
end
