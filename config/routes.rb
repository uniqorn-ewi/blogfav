Rails.application.routes.draw do
  root to: 'blogs#top'

  resources :blogs do
    collection do
      post :confirm
    end
  end

  resources :sessions, only: %i[ new create destroy ]

  resources :users

  resources :favorites, only: %i[ create destroy ]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
