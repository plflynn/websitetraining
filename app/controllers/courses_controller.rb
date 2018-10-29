class CoursesController < ApplicationController

  def display
    render json: {courses: Course.all}
  end
end
