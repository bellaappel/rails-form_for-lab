class StudentsController < ApplicationController
    def index
        @students = Students.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find(params[:id])
        render 'students/new'
    end

    def update
        @student = Student.find(params[:id])
	    @student.update(params.require(:student).permit(:first_name, :last_name))
	    redirect_to student_path(@student)
    end
end