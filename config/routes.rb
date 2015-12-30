Rails.application.routes.draw do
  
  resources :books, only: [:index] do
    collection do
      get :without_relations
      get :wrong_key
      get :russian_doll
    end    
  end
end
