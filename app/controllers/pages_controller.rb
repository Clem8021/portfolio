class PagesController < ApplicationController
  def index
    @projects = Project.where(featured: true).order(position: :asc)
  end

  def about
  end
end
