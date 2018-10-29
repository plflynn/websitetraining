Rails.application.routes.draw do
  post '/courses/create', to: "courses#create"
  post '/courses/update', to: "courses#update"
  post '/courses/destroy', to: "courses#destroy"
  post '/units/create', to: "units#create"
  post '/units/update', to: "units#update"
  post '/units/destroy', to: "units#destroy"
  post '/chapters/create', to: "chapters#create"
  post '/chapters/update', to: "chapters#update"
  post '/chapters/destroy', to: "chapters#destroy"
  post '/lessons/create', to: "lessons#create"
  post '/lessons/update', to: "lessons#update"
  post '/lessons/destroy', to: "lessons#destroy"
  post '/sessions/create', to: "sessions#create"
  post '/sessions/update', to: "sessions#update"
  post '/sessions/destroy', to: "sessions#destroy"

  get '/courses', to: "courses#display"
  get '/units', to: "units#display"
  get '/chapters', to: "chapters#display"
  get '/lessons', to: "lessons#display"
  get '/sessions', to: "sessions#display"

end
