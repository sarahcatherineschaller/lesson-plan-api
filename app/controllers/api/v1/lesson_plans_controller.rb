module Api::V1
	class LessonPlansController < ApplicationController 
		before_action :set_lesson_plan, only: [:show, :update, :destroy]

		def index 
			@lesson_plans = LessonPlan.order("created_at DESC")
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
			if @lesson_plan.update(lesson_plan_params)
				render json: @lesson_plan 
			else 
				render(
					status: 400, 
					json: {error: 'Lesson Plan not updated.'})
			end
		end

		def destroy 
			@lesson_plan.destroy
		end

		private 
		def set_lesson_plan 
			@lesson_plan = LessonPlan.find_by(id: params[:id]) 
		end

		def lesson_plan_params 
			params.require(:lesson_plan).permit(:title, :grade_level, :subject, :total_time, :objective, :materials, :summary, :other, :likes)
		end
	end 
end