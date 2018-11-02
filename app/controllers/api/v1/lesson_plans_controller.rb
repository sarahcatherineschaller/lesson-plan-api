module Api::V1
	class LessonPlansController < ApplicationController 
		def index 
			@lesson_plans = LessonPlan.all 
			render json: @ideas 
		end 
	end 
end