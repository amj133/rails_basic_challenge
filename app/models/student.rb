class Student < ApplicationRecord
  validates :name, presence: true

  has_many :addresses, dependent: :delete_all
  has_many :courses, through: :student_courses
end
