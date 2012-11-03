Secretconfessions::Application.routes.draw do

  resources :confessions
  
  root :to => 'confessions#index'
  
  get 'calling' => 'calling#index'
  
  post 'calling/incomingCall' => 'calling#incomingCall'
  post 'calling/recording' => 'calling#recording'
 
end
