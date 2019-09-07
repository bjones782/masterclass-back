class LessonsController < ApplicationController
    skip_before_action :authorized

    def index
        @lessons = Lesson.all 
        render json: @lessons
        # render json: @lessons.to_json( :include => {
        #     :students => { :only => [:id, :name, :mastered, :almost, :notyet] },
        #     :standards => { :only => [:id, :notation, :description, :masterylevel]} 
        # } )
        # render json: lessons.to_json(:include => :standards), :only => [:id, :student_id, :standard_id, :mastery]
    end

    def new
        @lesson = Lesson.new
    end
    

    def show
        @lesson = Lesson.find_by(id: params[:id])
        render json: LessonSerializer.new(@lesson)
        # render json: @lessons.to_json(:include => :standards), :only => [:id, :student_id, :standard_id, :mastery]
        # render json: lessons, :only => [:id, :student_id, :standard_id, :mastery]
     end

     def create
        @lesson = Lesson.create(lesson_params)
        render json: @lesson
        # if @lesson.valid?
        #     # render json: { lesson: @lesson }, status: :created
        #     render json: @lesson
        # else
        #     render json: { error: 'failed to create lesson' }, status: :not_acceptable
        # end
    end

    #  def create
    #     @lesson = Lesson.create(lesson_params)
    # end

      def edit 
        @lesson = Lesson.find_by(id: params[:id])  
      end

      def update 
        @lesson = Lesson.find_by(id: params[:id])
        message = errors.full_messages
        if @lesson.update(lesson_params)
        render json: lesson, :only => [:id, :student_id, :standard_id, :mastery]
        # else
        #     render json: => { :error => " Could not update User try again " }
        end
      end
  
      def destroy
        @lesson = Lesson.find_by(id: params[:id])
        @lesson.destroy
      end

     private
      def lesson_params
        # params.require(:lesson).permit(:id, :mastery, standard_id: [], student_id: [])
        params.require(:lesson).permit(:mastery, :standard_id, :student_id)
      end
end
