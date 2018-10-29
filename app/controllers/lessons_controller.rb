class LessonsController < ApplicationController

  def create
    Lesson.create!(
      title: params[:title],
      chapter_id: params[:chapter_id]
    )
  end

  def destroy
    lesson = Lesson.find(params[:lesson_id])
    lesson.destroy
  end

  def display
    chapter_id = params[:chapter_id]
    chapter_id.nil? ? lessons = Lesson.all : lessons = Lesson.where(chapter_id = chapter_id)
    render json: {lessons: lessons}
  end
end
