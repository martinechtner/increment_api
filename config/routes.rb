Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             },
             defaults: { format: :json }

  get :current, to: 'user_increments#current'
  get :increment, to: 'user_increments#increment'
  put :reset, to: 'user_increments#reset'
end

