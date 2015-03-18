Rails.application.routes.draw do

  mount CatarseOfflinePayment::Engine => "/catarse_offline_payment"
end
