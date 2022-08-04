Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resource :rooms, only: %i[show create], param: :title
  root "rooms#index"

end
