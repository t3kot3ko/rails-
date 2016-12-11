Rails.application.routes.draw do
  resources :test_results
  resources :executions
  resources :executors
  resources :test_result_types
  resources :testcases
  resources :projects
  resources :sections
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
