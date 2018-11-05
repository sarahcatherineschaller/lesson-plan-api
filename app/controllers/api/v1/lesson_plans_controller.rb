module Api::V1
	class LessonPlansController < ApplicationController 
		before_action :set_lesson_plan, only: [:show, :update, :destroy]

		def index 
			@lesson_plans = LessonPlan.all 
			render json: @lesson_plans 
		end

		def create 
			@lesson_plan = LessonPlan.new(lesson_plan_params)
			if @lesson_plan.save
				render json: @lesson_plan
			else 
				render json: {message: lesson_plan.errors}, status: 400 
			end
		end

		def show 
			render json: @lesson_plan
		end

		def update 
		end

		def destroy 
		end

		private 
		def set_lesson_plan 
			@lesson_plan = LessonPlan.find_by(id: params[:id]) 
		end

		def lesson_plan_params 
			params.require(:lesson_plan).permit(:title)
		end
	end 
end