class Patient < ActiveRecord::Base
  belongs_to :doctor
  # creates a method to retrive the doctor
  has_many :consultations
  # creates a method that retrieves ALL the patients
  has_many :doctors, through: :consultations
  # creates a method that retrieves ALL the doctors
  belongs_to :intern
  # creates a method to retrive the intern
end
