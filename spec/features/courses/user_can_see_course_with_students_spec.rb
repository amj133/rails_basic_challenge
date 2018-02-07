require 'rails_helper'

describe "user can see course and list of students" do
  context "visits course show page" do
    it "displays course name and list of students" do
      course = Course.create!(name: "Physics")
      course.students.create!(name: "Billy Bob")
      course.students.create!(name: "Sally Sue")

      visit course_path(course)

      expect(page).to have_content("Course Name:")
      expect(page).to have_content("Students:")
      expect(page).to have_content("Billy Bob")
      expect(page).to have_content("Sally Sue")
    end
  end
end
