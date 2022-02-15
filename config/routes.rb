Rails.application.routes.draw do
  resources :bars
  resources :turbs
  resources :gens
  resources :trafos
  root :to => "bars#index"
end
