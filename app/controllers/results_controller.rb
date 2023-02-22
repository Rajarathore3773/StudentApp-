class ResultsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index 
        results = Result.all
        render json:results , status:200
    end

    def show
        result = Result.find_by(id: params[:id])
        if result
        render json:result , status:200
        else
            render json:{message: "This id result not found"}
        end
    end

    def create 
        result = Result.create(result_params)

        if result.save
            render json:result , status:200
        else 
            render json:{message: "Not create result so use all fields of result"}
        end
    end

    def update 
        
        result = Result.find_by(id: params[:id])
        if result
            result.update(result_params)
            render json:result , status:200
        else 
            render json:{message: "This id Not available for Update result"}
        end
    end
    def destroy 
        result = Result.find_by(id: params[:id])
      if result
        result.destroy 
        render json:"Deleted result"
      else
        render json:{error:"This id result Not available for delete"}
      end
    end

    private
    def result_params
        params.require(:result).permit( :maths , :english, :physics, :chemistry,:hindi, :student_id)
    end
end
