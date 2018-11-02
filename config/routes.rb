Rails.application.routes.draw do
  namespace :api do 
  	namespace :v1 do 
  		resources :lesson_plans 
  	end 
  end
end
