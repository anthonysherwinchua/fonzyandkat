Rails.application.routes.draw do

  post 'message', to: 'pages#message'

  root 'pages#index'

end
