class SessionsController < ApplicationController

  def display
    lesson_id = params[:lesson_id]
    lesson_id.nil? ? sessions = Session.all : sessions = Session.where(lesson_id = lesson_id)
    render json: {sessions: sessions}
  end
end
