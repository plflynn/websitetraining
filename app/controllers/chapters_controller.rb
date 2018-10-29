class ChaptersController < ApplicationController

  def create
    Chapter.create!(
      title: params[:title]
    )
  end
end
