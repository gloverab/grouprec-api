Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  get '/member-data', to: 'members#show'
  get '/get-user-watch-list', to: 'users#get_watch_list'
  post '/tags/create-and-associate', to: 'tags#create_and_associate'
  post '/user-recommendation-ranking', to: 'user_recommendation_rankings#create'

  resources :recommendations
  resources :tags
  resources :recommendation_tag_joins
end