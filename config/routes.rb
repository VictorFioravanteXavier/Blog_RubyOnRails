Rails.application.routes.draw do
  scope "(:locale)", locale: /pt-BR|en/ do
    devise_for :users
    get "up" => "rails/health#show", as: :rails_health_check
    get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
    get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

    root "articles#index"

    resources :articles do
      resources :comments, only: %i[create destroy]
    end
    resources :categories, except: [ :show ]
  end
end
