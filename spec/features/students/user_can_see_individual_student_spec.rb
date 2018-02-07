require 'rails_helper'

describe "user can see individual student" do
  context "user visits student show page" do
    it "displays individual student info" do
      student = Student.create!(name: "Bob Jones")
      student.courses.create!(name: "Biology")
      student.courses.create!(name: "Physics")

      visit student_path(student)

      expect(page).to have_content("Student Name: Bob Jones")
      expect(page).to have_content("Courses:")
      expect(page).to have_content("Biology")
      expect(page).to have_content("Physics")
    end
  end
end
