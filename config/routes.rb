Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'signups#new'
  get '/signups/new' => 'signups#new'
  get '/signups/show/:id' => 'signups#show'
  post '/signups' => 'signups#create'
 resources 'signups'

end
