class LessonsController < ApplicationController

  def display
    chapter_id = params[:chapter_id]
    chapter_id.nil? ? lessons = Lesson.all : lessons = Lesson.where(chapter_id = chapter_id)
    render json: {lessons: lessons}
  end
end
