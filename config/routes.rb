CatarseOfflinePayment::Engine.routes.draw do
  resources :offline_payment, only: [], path: 'payment/offline_payment' do

    member do
      get  :review
      post :pay
      # get  :success
      get  :cancel
    end
  end
end

