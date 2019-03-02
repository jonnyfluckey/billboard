Rails.application.routes.draw do

resources :charts do
  resources :chart_datums
end
end
