class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end
    def highest_grade
        grades = Student.all.order(grade: :desc)
        highest_grade = grades.first
        render json: highest_grade
    end
end
