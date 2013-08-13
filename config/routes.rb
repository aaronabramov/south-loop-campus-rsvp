SouthLoopCampusRsvp::Application.routes.draw do
  get "*path", to: redirect("http://citychurchchicago.com/")
  root to: redirect("http://citychurchchicago.com/")

  root to: "application#home"
  resources :rsvps, only: [:create, :index]

  post :notify, to: "logs#notify"

  resources :logs, only: :index
end
