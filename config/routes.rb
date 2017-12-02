Rails.application.routes.draw do
  post 'coin/cal'
  get 'coin/getTopTenCoin'
  get 'coin/getPrice'

  get 'coin/getETH'

  get 'coin/getBTC'

  get 'coin/getLTC'
  
  get 'coin/getXRP'
  
  root 'coin#getPrice'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
