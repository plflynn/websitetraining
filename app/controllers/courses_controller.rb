class CoursesController < ApplicationController

  def create
    Course.create!(
      title: params[:title]
    )
  end

  def update
    Course.find(params[:course_id]).update!(title:params[:title]) if params[:title]
  end

  def destroy
    course = Course.find(params[:course_id])
    course.destroy
  end

  def display
    render json: {courses: Course.all}
  end
end
