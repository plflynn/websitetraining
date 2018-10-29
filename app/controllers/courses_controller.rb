class CoursesController < ApplicationController

  def create
    Course.create!(
      title: params[:title]
    )
  end

  def destroy
    course = Course.find(params[:course_id])
    course.destroy
  end

  def display
    render json: {courses: Course.all}
  end
end
