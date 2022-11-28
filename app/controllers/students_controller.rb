class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def highest_grade
        smarts = Student.order(grade: :desc)
        render json: smarts
    end
end
