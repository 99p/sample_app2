Rails.application.routes.draw do

  root 'static_pages#home'
  get 'my_pages/cool'
  get 'my_pages/hot'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'

end
