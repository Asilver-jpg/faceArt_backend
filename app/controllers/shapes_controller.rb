class ShapesController < ApplicationController
    def index
        shapes= Shape.all
        render json: shapes
    end
    t.integer "value1"
    t.integer "value2"
    t.integer "value3"
    t.integer "value4"
    t.string "fill"
    t.string "stroke"
    t.integer "stroke_weight"
    t.integer "project_id"
    t.integer "render_number"
    t.integer "rotation"
    def create
       let arr=[]
       params[:_json].each do |shape|
        shape= Shape.create({value1: shape[:posX], value2: shape[:posY], value3: shape[:width], value4:shape[:height], 
            fill: shape[:color], stroke: shape[:stroke], stroke_weight: shape[:strokeWeight], project_id: shape[:projectId],render_number: 0, rotation: shape[:rotation]})
          
       end
        render json: shape
           
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
