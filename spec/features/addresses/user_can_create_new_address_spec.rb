require 'rails_helper'

describe "user can create a new address for a student" do
  context "visits address new page" do
    it "can create an address" do
      student = Student.create!(name: "Bill Bob")

      visit new_student_address_path(student)
      fill_in('address[description]', with: "Summer Home")
      fill_in('address[street]', with: "123 Fake St.")
      fill_in('address[street]', with: "Richmond")
      fill_in('address[street]', with: "VA")
      fill_in('address[street]', with: "55113")
      click_on('Create New Address')

      expect(current_path).to eq(student_path(student))
      expect(page).to have_content("Description: Summer Home")
      expect(page).to have_content("123 Fake St.")
      expect(page).to have_content("Richmond, VA, 55113")
    end
  end
end
