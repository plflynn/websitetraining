class UnitsController < ApplicationController

  def display
    course_id = params[:course_id]
    course_id.nil? ? units = Unit.all : units = Unit.where(course_id = course_id)
    render json: {units: units}
  end
end
