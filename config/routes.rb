Rails.application.routes.draw do

resources :charts do
  resources :top100s
end

resources :charts do
  resources :top100eurs
end

resources :charts do
  resources :top100us
end

resources :top100s do
  resources :songs
end

resources :top100us do
  resources :songs
end
resources :top100eurs do
  resources :songs
end

resources :artists do
  resources :songs
end

end
