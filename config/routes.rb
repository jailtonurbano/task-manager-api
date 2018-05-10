require 'api_version_constrainst'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json }, constrainst: { subdomain: 'api' }, path: "/" do
    namespace :v1, path: "/", constrainst: ApiVersionConstraint.new(version: 1 , default: true) do
      resources :tasks
    end
  end
end
