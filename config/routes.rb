Rails.application.routes.draw do
  root to: 'static#root'
  
  get '/asteroids', to: 'static#asteroids'
end
