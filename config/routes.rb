Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'game#new'
  get 'new', to: 'game#new'
  post 'score', to: 'game#score'
end


