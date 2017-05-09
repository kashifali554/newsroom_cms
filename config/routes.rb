Rails.application.routes.draw do
  namespace :admin do
    resources :pages # /admin/pages
  end

  get '/:id' => 'pages#show'

  root 'admin/pages#index'
  # resources :pages
  # Page.where.not("slug", nil).all.each do |page|
  #   get "/#{page.slug}", controller: "pages", action: "show", id: page.id
  # end
end
