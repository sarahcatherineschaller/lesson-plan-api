Rails.application.routes.draw do
  namespace :api do 
  	namespace :v1 do 
  		resources :lesson_plans, only: [:index, :create, :update, :destroy]
  	end 
  end
end
