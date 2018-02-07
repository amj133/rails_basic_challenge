require 'rails_helper'

describe "user can create a new student" do
  context "user visits new student page" do
    it "allows user to submit and create studnet" do
      visit new_student_path

      fill_in('student[name]', with: "Johnny Hendrix")
      click_on('Create Student')

      expect(current_path).to eq('/students/1')
      expect(page).to have_content("Student Name: Johnny Hendrix")
    end
  end
end
