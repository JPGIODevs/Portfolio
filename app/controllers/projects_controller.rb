class ProjectsController < ApplicationController
  def update_stream
    case params[:pageId]
      when 1
        replace_stream("placeholder", "projects/home")
      when 2 
        replace_stream("portfolio", "projects")
end
