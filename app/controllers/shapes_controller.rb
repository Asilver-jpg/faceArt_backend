class ShapesController < ApplicationController
    def index
        shapes= Shape.all
        render json: shapes
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
    
    def shape_params
        params[:shape].permit(:value1, :value2, :value3, :value4, :fill, :stroke, :stroke_weight, :project_id)
    
    end
end
