Rails.application.routes.draw do
  get 'partners/index'
  get 'partners/show'
  get 'partners/new'
  get 'partners/edit'
  get 'share_movements/index'
  get 'share_movements/show'
  get 'share_movements/new'
  get 'share_movements/edit'
  get 'companies/index'
  get 'companies/show'
  get 'companies/new'
  get 'companies/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
