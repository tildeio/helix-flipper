Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'text_transform#index'
  post '/transform' => 'text_transform#transform'
end
