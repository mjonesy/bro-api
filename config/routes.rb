Rails.application.routes.draw do
  get '/bros' => 'bros#index'
  post '/bros' => 'bros#create'
  get '/bros/:id' => 'bros#show'
  patch '/bros/:id' => 'bros#update'
  delete '/bros/:id' => 'bros#destroy'

  namespace :api do
    namespace :v1 do
      get '/bros' => 'bros#index'
      post '/bros' => 'bros#create'
      get '/bros/id' => 'bros#show'
    end
  end
end
