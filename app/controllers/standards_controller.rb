class StandardsController < ApplicationController
    skip_before_action :authorized

    def index
        standards = Standard.all 
        
        render json: standards.to_json(:include => :students), :only => [:id, :notation, :description, :masterylevel]
    end

    def show
        standard = Standard.find_by(id: params[:id])
        render json: standards.to_json(:include => :students), :only => [:id, :notation, :description, :masterylevel]
     end

     def edit 
        standard = Standard.find_by(id: params[:id])  
      end

      def update 
        standard = Standard.find_by(id: params[:id])
        
        if standard.update(standard_params)
        render json: standard, :only => [:id, :notation, :description, :masterylevel]
        # else
        #     render json: => { :error => " Could not update User try again " }
        end
      end

     private
      def standard_params
        params.require(:standard).permit(:id, :notation, :description, :masterylevel)
      end
end
