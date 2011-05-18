ActionController::Routing::Routes.draw do |map|
  map.resources :visitors

  map.resources :sponsors

  map.resources :projects

  map.resources :boards

  map.resources :videos

  map.resources :galleries

  map.resources :presses

  map.resources :articles

  map.resources :events

  map.resources :sessions

  map.login 'login', :controller => 'sessions', :action => 'new'

  map.logout 'logout', :controller => 'sessions', :action => 'destroy'

  map.home '', :controller => 'site', :action => 'index'

  map.about 'about', :controller => 'site', :action => 'about'

  map.portfolio 'portfolio', :controller => 'site', :action => 'portfolio'

  map.services 'services', :controller => 'site', :action => 'services'

  map.contact 'contact', :controller => 'site', :action => 'contact'

  map.vision 'vision', :controller => 'site', :action => 'vision'

  map.view 'view', :controller => 'site', :action => 'view'

  map.welcome 'welcome', :controller => 'site', :action => 'welcome'

  map.direction 'direction', :controller => 'site', :action => 'direction'

  map.targets 'targets', :controller => 'site', :action => 'targets'

  map.structure 'structure', :controller => 'site', :action => 'structure'

  map.portfolio 'portfolio', :controller => 'site', :action => 'portfolio'

  map.strategy 'strategy', :controller => 'site', :action => 'strategy'

  map.partners 'partners', :controller => 'site', :action => 'partners'

  map.objectives 'objectives', :controller => 'site', :action => 'objectives'

  map.mission 'mission', :controller => 'site', :action => 'mission'

  map.link 'links', :controller => 'site', :action => 'links'

  map.funding 'funding', :controller => 'site', :action => 'funding'

  map.activities 'activities', :controller => 'site', :action => 'activities'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

