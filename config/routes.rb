Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :institutionstaffs ,path: 'institutionstaffs',controllers: { registrations: "institutionstaffs/registrations" }
  devise_for :overtstaffs,path: 'overtstaffs',controllers: { registrations: "overtstaffs/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end














