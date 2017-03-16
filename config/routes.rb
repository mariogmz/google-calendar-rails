Rails.application.routes.draw do
  get '/redirect', to: 'googleauth#redirect', as: 'redirect'
  get '/callback', to: 'googleauth#callback', as: 'callback'
  get '/calendars', to: 'googleauth#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'googleauth#events', as: 'events', calendar_id: /[^\/]+/
end
