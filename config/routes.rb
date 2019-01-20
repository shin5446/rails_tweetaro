Rails.application.routes.draw do
  get '/', to: 'top_pages#index'

  resources :tweetaros do
    collection do
      post :confirm
    end
  end
end
