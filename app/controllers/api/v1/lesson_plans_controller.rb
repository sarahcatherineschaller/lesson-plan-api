module Api::V1
	class LessonPlansController < ApplicationController 
		before_action :set_lesson_plan, only: [:show, :update, :destroy]

		def index 
			@lesson_plans = LessonPlan.all 
			render json: @lesson_plans 
		end

		def create 
			@lesson_plan = LessonPlan.create(lesson_plan_params)
			render json: @lesson_plan
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
			params.require(:lesson_plan).permit(:title, :grade_level, :subject, :total_time, :objective, :materials, :summary, :other)
		end
	end 
end