FinApp::Application.routes.draw do

  resources :securities, only: [:index, :show] do
    resources :average_annual_price_to_earnings_ratios, shallow: true, only: [:index, :show]
    resources :dividends_paid_outs, shallow: true, only: [:index, :show]
    resources :equity_values, shallow: true, only: [:index, :show]
    resources :net_earnings, shallow: true, only: [:index, :show]
    resources :shares_outstanding, shallow: true, only: [:index, :show]
  end

  resources :years, only: [:index, :show]
end
