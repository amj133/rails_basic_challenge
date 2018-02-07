class AddressesController < ApplicationController

  def new
    binding.pry
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new
  end

end
