class StudentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        students =Student.all
        render json:students , status:200
    end
    
    def show 
        
        student = Student.where(id: params[:id])
        if student.present?
            render json:student , status:200
        else
            render json:{error:"This id Student Not Found" }
        end
    end

    def create 
        student =Student.create(student_params)
        if student.save
            render json:student , status:200
        else
            render json:{error:"Again create student data and use all fields"}
        end
    end

    def update 
        student = Student.find_by(id: params[:id])
        if student
            student.update(student_params)
            render json:student , status:200
        else
            render json:{error:"This student id not available for Update"}
        end
    end


    def destroy
     
        student = Student.find_by(id: params[:id])
         
        if student
            student.destroy
            render json:"Deleted Student"
        else
            render json:{error: "This id not avilable for Delete"}
        end
    end

    private
    def student_params
        params.require(:student).permit(:f_name , :l_name, :email, :rollno, :contact, :address)
    end
end
