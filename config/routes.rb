Rails.application.routes.draw do
  resources :groups
  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
    }
  get '/member-data', to: 'members#show'
  get '/user-watch-list', to: 'users#get_watch_list'
  get '/user-recommended-by', to: 'users#get_recommended_by'
  get 'user-recommended-for', to: 'users#get_recommended_for'
  get '/user-ranked-recommendations', to: 'users#get_ranked_recommendations'
  get '/current-user', to: 'users#show_current_user'
  get '/users/sign-out', to: 'users/sessions#sign_out'
  get '/group-users', to: 'groups#group_users'
  post '/user-specific-recommendations', to: 'user_recommended_for_joins#create_multiple'

  post '/tags/create-and-associate', to: 'tags#create_and_associate'
  post '/user-recommendation-ranking', to: 'user_recommendation_rankings#create'
  post '/user-seconded-recommendation', to: 'user_recommendation_joins#create'
  post '/recommend-for-user', to: 'user_recommended_for_joins#create'
  delete '/user-seconded-recommendation/:recommendation_id/:user_id', to: 'user_recommendation_joins#destroy'
  patch '/user-recommendation-ranking', to: 'user_recommendation_rankings#update'

  resources :recommendations
  resources :tags
  resources :recommendation_tag_joins
end