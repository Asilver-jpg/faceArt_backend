class ProjectsController < ApplicationController
    def index
        projects= Project.all 
        render json: projects, include: [:user]
    end
    def new
    end
    def create
    end
    def edit
    end
    def show
    end
    def destroy
    end

    private

    def project_params
        params[:project].permit(:name, :views, :user_id, :date)
    end
end
