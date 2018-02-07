require 'rails_helper'

describe "user can edit a student" do
  context "user visits student edit page" do
    it "can edit individual student" do
      student = Student.create!(name: "Billy Bob")

      visit edit_student_path(student)
      fill_in('student[name]', with: "Schmilly Smob")
      click_on('Edit Student')

      expect(current_path).to eq('/students/1')
      expect(page).to have_content("Student Name: Schmilly Smob")
    end
  end
end
