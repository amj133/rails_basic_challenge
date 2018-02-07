require 'rails_helper'

describe "user can see individual student" do
  context "user visits student show page" do
    it "displays individual student info" do
      student = Student.create!(name: "Bob Jones")

      visit student_path(student)
      save_and_open_page

      expect(page).to have_content("Student Name: Bob Jones")
    end
  end
end
