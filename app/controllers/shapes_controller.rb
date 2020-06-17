class ShapesController < ApplicationController
    def index
        shapes= Shape.all
        render json: shapes
    end
  
    def create
       
       params[:_json].each do |shape|
        shape= Shape.create(shape_params)
         render json: shape
       end
           
    end
    def update
        shape= Shape.find_by(id: params[:id])
        shape.update(value1: params[:value1], value2:params[:value2], value3:params[:value3], value4: params[:value4], 
            stroke: params[:stroke], fill: params[:fill], rotation: params[:rotation], stroke_weight:params[:strokeWeight])
    end
    def show
    end
    def destroy
        
        shape= Shape.find(params[:id])
        shape.destroy
    end

    private
    
    def shape_params
        params.require(:shape).permit(:value1, :value2, :value3, :value4, :fill, :stroke, :stroke_weight, :project_id, :rotation,:render_number)
    
    end
end
