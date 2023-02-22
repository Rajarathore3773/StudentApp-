class ExamsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        exams =Exam.all
        render json:exams, status:200
    end

    def show
        exam = Exam.find_by(id: params[:id])
        if exam
            render json:exam, status:200
        else
            render json:{error: "didn't show this exam id"}
        end
    end

    def create
        exam = Exam.create(exam_params)
        if exam.save
            render json:exam, status:200
        else
            render json:{error:"This exam not create so use all fields"}
        end
    end
    def update 
            exam = Exam.find_by(id: params[:id])
            if exam
                 exam.update(exam_params)
                render json:exam , status:200
            else
                render json:{error:"This exam id not avialable for Update"}
           end

    end
   def destroy
       exam = Exam.find_by(id: params[:id])
        if  exam
            exam.destroy
            render json:"Successfully deleted"
        else
            render json:{error:"This exam id not avialable for delete" }
        end
   end

   private
    def exam_params
        params.require(:exam).permit(:maths, :english, :physics, :chemistry, :hindi, :student_id)
    end
end
