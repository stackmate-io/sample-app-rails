Rails.application.routes.draw do
  get '/', to: 'incidents#index'
  post '/report', to: 'incidents#report'
end
