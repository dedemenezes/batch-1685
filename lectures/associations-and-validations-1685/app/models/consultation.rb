class Consultation < ActiveRecord::Base
  belongs_to :doctor
  # creates a method to retrive the doctor
  belongs_to :patient
  # creates a method to retrive the patient
end
