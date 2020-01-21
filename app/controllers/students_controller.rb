class StudentsController < ApplicationController
  before_action :find_student, only: [:edit, :update, :show, :destroy]

  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    p params.inspect
    @student = Student.new(student_params)
    p @student.inspect
    if @student.save!
      redirect_to students_url
      # redirect_to student_path
    else
      render :new
    end
  end

  def show
    # @student = Student.find(params[:id])
  end

  def edit
    # @student = Student.find(params[:id])
  end

  def update
    # @student = Student.find(params[:id])
    if @student.update!(student_params)
      redirect_to students_url
    else
      render :new
    end
  end

  def destroy
    @student.destroy
    flash[:alert] = 'Deletion of record succefully'
    redirect_to students_url
  end

  private

  def student_params
    params.require(:student).permit!
  end

  def find_student
    @student = Student.find(params[:id])
  end

  def m1; end
end
