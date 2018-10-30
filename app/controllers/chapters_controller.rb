class ChaptersController < ApplicationController

  def create
    Chapter.create!(
      title: params[:title],
      unit_id: params[:unit_id]
    )
  end

  def update
    Chapter.find(params[:chapter_id]).update!(title:params[:title]) if params[:title]
    Chapter.find(params[:chapter_id]).update!(unit_id:params[:unit_id]) if params[:unit_id]
  end

  def destroy
    chapter = Chapter.find(params[:chapter_id])
    chapter.destroy
  end

  def display
    unit_id = params[:unit_id]
    unit_id.nil? ? chapters = Chapter.all : chapters = Chapter.where(unit_id: unit_id)
    render json: {chapters: chapters}
  end
end
