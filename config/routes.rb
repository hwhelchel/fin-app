FinApp::Application.routes.draw do

  resources :securities, only: [:index, :show] do
    resources :performances, only: :show
  end

  resources :performances, only: :index

  resources :years, only: [:index, :show]
end
