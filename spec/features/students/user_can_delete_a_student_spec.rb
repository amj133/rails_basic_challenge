require 'rails_helper'

describe "user can delete a student" do
  context "user visits student index" do
    it "allows user to delete individual student" do
      student_1 = Student.create!(name: "Billy Bob")
      student_2 =Student.create!(name: "Sally Smith")
      student_3 =Student.create!(name: "Frank Abbot")

      visit students_path
      click_on('Delete', match: :first)

      expect(current_path).to eq('/students')
      expect(Student.all.count).to eq(2)
      expect(page).to have_content("Sally Smith")
      expect(page).to have_content("Frank Abbot")
      expect(page).to_not have_content("Billy Bob")
    end
  end
end
