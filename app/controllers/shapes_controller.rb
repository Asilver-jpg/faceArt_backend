class ShapesController < ApplicationController
    def index
        shapes= Shape.all
        render json: shapes
    end

    def create
        arr=[]
        
       params[:_json].each do |shape|
        shape= Shape.create({value1: shape[:posX], value2: shape[:posY], value3: shape[:width], value4:shape[:height], 
            fill: shape[:color], stroke: shape[:stroke], stroke_weight: shape[:strokeWeight], project_id: shape[:projectId],render_number: 0, 
            rotation: shape[:rotation]})
            
            arr.push(shape)
       end
       
        render json: arr
           
    end
    def update
        shape= Shape.find_by(id: params[:id])
        shape.update(value1: shape[:posX], value2: shape[:posY], value3: shape[:width], value4:shape[:height], 
            fill: shape[:color], stroke: shape[:stroke], stroke_weight: shape[:strokeWeight], project_id: shape[:projectId],render_number: 0, 
            rotation: shape[:rotation])
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
