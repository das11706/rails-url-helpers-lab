class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end


  def activate_student
    @student = Student.find(params[:id])
    if @student
    @student.active = !@student.active 
    # binding.pry
    @student.save  
    end
    redirect_to student_path(@student)
  end
 

  private

  def set_student
    @student = Student.find(params[:id])
  end
end