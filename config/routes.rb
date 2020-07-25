Rails.application.routes.draw do
  get "signup" => "users#new"
  post "users/create" => "users#create"
end
