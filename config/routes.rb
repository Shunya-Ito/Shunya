Rails.application.routes.draw do
  root 'others#toppage' 
  devise_for :societies, controllers: { registrations: 'societies/registrations' }
  
  get 'societies/index'
  get 'societies/show'
  get 'societies/new'
  get 'societies/create'
  get 'societies/edit'
  get 'societies/update'
  
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'others/toppage' => 'others#toppage' 
  get 'others/about' => 'others#about'
  get 'others/all' => 'others#all',as: 'society_all'

  get 'mypage/societymypage/:id' => 'mypage#societymypage',as:'mypage_societymypage'
  get 'mypage/usermypage/:id' => 'mypage#usermypage',as: 'mypage_usermypage'
  get 'rooms/:id' => 'rooms#show',as: 'room_show'
  post 'rooms/:id' => 'rooms#create',as: 'rooms'

  resources :rooms, :only => [:show] do
    resources :messages, :only => [:create]
  end

end
