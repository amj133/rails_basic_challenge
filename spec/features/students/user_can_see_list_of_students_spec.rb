require 'rails_helper'

describe "user can see list of students" do
  context "user visits students index page" do
    it "displays list of students" do
      student_1 = Student.create!(name: "Billy Bob")
      student_2 =Student.create!(name: "Sally Smith")
      student_3 =Student.create!(name: "Frank Abbot")

      visit students_path

      expect(page).to have_content("Billy Bob")
      expect(page).to have_content("Sally Smith")
      expect(page).to have_content("Frank Abbot")
    end
  end
end
