Rails.application.routes.draw do

  get 'report/index'
  resources :incomes
  resources :expenses
  resources :expense_categories
  resources :income_categories
  get 'home/index'
  devise_for :users
  get 'persons/profile'
  root 'home#index'
  get 'persons/profile', as: 'user_root'
end
