Rails.application.routes.draw do

resources :charts do
  resources :songs
end

resources :artists do
  resources :songs
end

end
