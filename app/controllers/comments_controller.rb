class CommentsController < ApplicationController
    skip_before_action :authorized

    def index
        comments = Comment.all 
        # students = Student.with_standards
        
        render json: comments
    end

    # def new
    #   @student = Student.new
    # end
  
    def show
        comment = Comment.find_by(id: params[:id])
        render json: comment.to_json(:include => :student), :only => [:id, :content, :student_id]
     end

     def create
      @comment = Comment.new(comment_params)
      if @comment.save
        render json: @comment
      else
        render json: {error: "something wrong happened"}
      end
     end

  
    def destroy
      @comment = Comment.find_by(id: params[:id])
      @comment.destroy
    end

     private
      def comment_params
        params.require(:comment).permit(:student_id, :content)
      end

end


