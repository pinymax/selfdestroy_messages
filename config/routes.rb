Rails.application.routes.draw do
  resources :messages do
    member do
      get :link
      get :message_verify
    end
  end
  post "/messages/:id/message_verify" => "messages#show"
  root 'messages#new'
end
