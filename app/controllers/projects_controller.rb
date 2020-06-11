class ProjectsController < ApplicationController
    def index
        projects= Project.all 
        render json: projects, include: [:user,:shapes]
    end
    def new
    end
    def create
    end
    def edit
    end
    def show
        project= Project.find(params[:id])
        render json: project, include: [:user, :shapes]
    end
    def destroy
    end

    private

    def project_params
        params[:project].permit(:name, :views, :user_id, :date)
    end
end
