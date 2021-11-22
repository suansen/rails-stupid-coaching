Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Verb + Path + Controller + Action
  # Verb </path>, to: Controller#Action
  root to: 'questions#home'
  get 'ask', to: 'questions#ask'
  get 'answer', to: 'questions#answer'
end
