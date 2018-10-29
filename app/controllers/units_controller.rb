class UnitsController < ApplicationController

  def create
    Unit.create!(
      title: params[:title],
      course_id: params[:course_id]
    )
  end

  def update
    Unit.find(params[:unit_id]).update!(title:params[:title]) if params[:title]
    Unit.find(params[:unit_id]).update!(course_id:params[:course_id]) if params[:course_id]
  end

  def destroy
    unit = Unit.find(params[:unit_id])
    unit.destroy
  end

  def display
    course_id = params[:course_id]
    course_id.nil? ? units = Unit.all : units = Unit.where(course_id = course_id)
    render json: {units: units}
  end
end
