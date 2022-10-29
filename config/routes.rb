Rails.application.routes.draw do
  get 'events/new'
  get 'events/index'
  get '/' => 'planners#new'
  post 'planner/create' => 'planners#create'
  post 'event/create' => 'events#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
