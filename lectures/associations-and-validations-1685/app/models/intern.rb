class Intern < ActiveRecord::Base
  belongs_to :doctor
  # creates a method to retrive the doctor
  has_many :patients
  # creates a method that retrieves ALL the patients
end
