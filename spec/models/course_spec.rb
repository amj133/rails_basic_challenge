require 'rails_helper'

describe Course, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "relationships" do
    it { is_expected.to have_many(:students).through(:student_courses) }
  end
end
