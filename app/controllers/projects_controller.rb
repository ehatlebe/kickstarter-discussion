class ProjectsController < ApplicationController
  def index # /projects
    @projects = Project.all
    # SELECT * FROM PROJECTS
  end
  
  def show # /projects/:id
    @project = Project.find(params[:id])
  end

  def new # /projects/new
    @project = Project.new
  end

  def create # /projects/new => /projects/:id
    project = Project.create(params[:project])
    redirect_to project_path(project)
  end

  def edit #projects/:id/edit
    @project = Project.find(params[:id])
  end

  def update # /projects/:id/edit => /projects/:id
    project = Project.find(params[:id])
    project.update(params[:project])
    redirect_to project_path(project)
  end

  def destroy # /projects/:id/destroy
    Project.find(params[:id]).destroy
  end
end