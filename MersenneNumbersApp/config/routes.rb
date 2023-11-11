Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get 'laba8/index'
  get 'laba8/calculate'
  root 'laba8#index'
end
