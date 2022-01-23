Rails.application.routes.draw do
  root to: 'pages#home'

  # Implementação da rota index para a API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :netflixes, only: %i[index]
    end
  end
end
