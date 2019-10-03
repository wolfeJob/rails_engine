# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :transactions do
        get "/find", to: "search#show"
    end
    resources :transactions, only: [:index, :show]
  end
end
  namespace :api do
    namespace :v1 do
      resources :invoice_items, only: [:index, :show]
    end
  end



  namespace :api do
    namespace :v1 do
      resources :customers, only: [:index, :show]
    end
  end

  namespace :api do
    namespace :v1 do
      namespace :invoices do
        get "/find", to: "search#show"
  end
  resources :invoices, only: [:index, :show]
end
end


  namespace :api do
    namespace :v1 do
      namespace :items do
        get "/find", to: "search#show"
      end
      resources :items, only: [:index, :show]
    end
  end

  namespace :api do
    namespace :v1 do
      namespace :merchants do
      get "/find", to: "search#show"
    end
    resources :merchants, only: [:index,:show]
  end
end
end #end routes
