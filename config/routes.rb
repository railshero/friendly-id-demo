Rails.application.routes.draw do

  root to: 'pages#index'
  get 'pages/index'

  get "/railshero" => redirect("https://railshero.pw")
  get "/blogpost" => redirect("https://railshero.pw/416/seo-friendly-urls-with-friendly_id")

  resources :posts
  
end
