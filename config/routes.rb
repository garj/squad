Rails.application.routes.draw do
  root "players#index"
  
  resources :players
  resources :squads
  get 'players/getforsquad/:id', to: "players#get_player_for_squad"
  
  get 'search', to: "searches#search"
end
