Rails.application.routes.draw do
  get 'reports/report_graph'
  get 'reports/report_by_dates_graph'
  get 'reports/index'
  get 'reports/report_by_category'
  get 'reports/report_by_dates'
  get 'mains/index' 
    resources :operations
    resources :categories
     
    root 'mains#index'  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
