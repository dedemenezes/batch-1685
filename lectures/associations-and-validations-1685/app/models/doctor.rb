class Doctor < ActiveRecord::Base
  # associations
  has_many :interns
  # creates a method that retrieves ALL the interns
  # e.g. doctor.interns

  has_many :consultations
  # creates a method that retrieves ALL the consultation
  # e.g. doctor.consultations

  has_many :patients, through: :consultations
  # creates a method that retrieves ALL the patients
  # e.g. doctor.patients

  # validations
  # validates :column_name, validation_name: value
  validates :last_name, presence: true # cannot be empty
  # validates :last_name, uniqueness: true
  validates :last_name, uniqueness: { scope: :first_name }
end
