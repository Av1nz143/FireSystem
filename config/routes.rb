Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  resources :transmission_f_records
  resources :payer_c_records
  resources :payer_b_records
  resources :payer_a_records
  resources :transmitter_t_records
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#main'

end
