class SessionsController < ApplicationController

  def create
    Session.create!(
      title: params[:title],
      lesson_id: params[:lesson_id]
    )
  end

  def destroy
    session = Session.find(params[:session_id])
    session.destroy
  end

  def display
    lesson_id = params[:lesson_id]
    lesson_id.nil? ? sessions = Session.all : sessions = Session.where(lesson_id = lesson_id)
    render json: {sessions: sessions}
  end
end
