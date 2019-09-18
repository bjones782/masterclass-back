class StudentsController < ApplicationController
    skip_before_action :authorized

    def index
        students = Student.all 
        # students = Student.with_standards
        
        render json: students.to_json(:include => :standards), :only  => [:id, :name, :mastered, :almost, :notyet]
    end

    def new
      @student = Student.new
    end
  
    def show
        student = Student.find_by(id: params[:id])
        p '============================================='
        p params
        p student
        render json: student.to_json(:include => :standards), :only => [:id, :name, :mastered, :almost, :notyet]
     end

     def create
      @student = Student.new(student_params)
      if @student.save
        render json: @student
      else
        render json: {error: "something wrong happened"}
      end
     end

  
    def destroy
      student = Student.find_by(id: params[:id])
      student.destroy
    end

     private
      def student_params
        params.require(:student).permit(:id, :name, :mastered, :almost, :notyet, :user_id)
      end

end
