class PlansController < ApplicationController
    skip_before_action :authorized

    def index
        plans = Plan.all 
        # students = Student.with_standards
        
        render json: plans
    end

    def show
        plan = Plan.find_by(id: params[:id])
        render json: plan.to_json:only => [:id, :topic, :objective, :direct, :guided, :independent, :cfu]
     end

     def create
        @plan = Plan.new(plan_params)
        if @plan.save
          render json: @plan
        else
          render json: {error: "something wrong happened"}
        end
       end
    
       def destroy
        @plan = Plan.find_by(id: params[:id])
        @plan.destroy
      end
  
    private
        def plan_params
          params.require(:plan).permit(:id, :topic, :objective, :direct, :guided, :independent, :cfu)
     end

end
