class LessonPlanSerializer < ActiveModel::Serializer 
	attributes :id, :title, :grade_level, :subject, :total_time, :objective, :materials, :summary, :other, :count
end