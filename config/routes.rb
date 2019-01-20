Rails.application.routes.draw do
  resources :tweetaros do
    collection do
      post :confirm
    end
  end
end
