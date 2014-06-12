Rails.application.routes.draw do
  devise_for :users
  root 'about#info'

  get('/about',   { :controller => 'about', :action => 'info'})
  # Routes for the Play_response resource:
  # CREATE
  get('/play_responses/new', { :controller => 'play_responses', :action => 'new' })
  get('/play_responses/new/:id', { :controller => 'play_responses', :action => 'new' })
  get('/create_play_response', { :controller => 'play_responses', :action => 'create' })

  # READ
  get('/play_responses', { :controller => 'play_responses', :action => 'index' })
  get('/play_responses/:id', { :controller => 'play_responses', :action => 'show' })

  # UPDATE
  get('/play_responses/:id/edit', { :controller => 'play_responses', :action => 'edit' })
  get('/update_play_response/:id', { :controller => 'play_responses', :action => 'update' })

  # DELETE
  get('/delete_play_response/:id', { :controller => 'play_responses', :action => 'destroy' })
  #------------------------------

  # Routes for the Play resource:
  # CREATE
  get('/plays/new', { :controller => 'plays', :action => 'new' })
  get('/create_play', { :controller => 'plays', :action => 'create' })

  # READ
  get('/plays', { :controller => 'plays', :action => 'index' })
  get('/plays/:id', { :controller => 'plays', :action => 'show' })

  # UPDATE
  get('/plays/:id/edit', { :controller => 'plays', :action => 'edit' })
  get('/update_play/:id', { :controller => 'plays', :action => 'update' })

  # DELETE
  get('/delete_play/:id', { :controller => 'plays', :action => 'destroy' })
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get('/events/new', { :controller => 'events', :action => 'new' })
  get('/create_event', { :controller => 'events', :action => 'create' })

  # READ
  get('/events', { :controller => 'events', :action => 'index' })
  get('/events/:id', { :controller => 'events', :action => 'show' })

  # UPDATE
  get('/events/:id/edit', { :controller => 'events', :action => 'edit' })
  get('/update_event/:id', { :controller => 'events', :action => 'update' })

  # DELETE
  get('/delete_event/:id', { :controller => 'events', :action => 'destroy' })
  #------------------------------

  # Routes for the Team resource:
  # CREATE
  get('/teams/new', { :controller => 'teams', :action => 'new' })
  get('/create_team', { :controller => 'teams', :action => 'create' })

  # READ
  get('/teams', { :controller => 'teams', :action => 'index' })
  get('/teams/:id', { :controller => 'teams', :action => 'show' })

  # UPDATE
  get('/teams/:id/edit', { :controller => 'teams', :action => 'edit' })
  get('/update_team/:id', { :controller => 'teams', :action => 'update' })

  # DELETE
  get('/delete_team/:id', { :controller => 'teams', :action => 'destroy' })
  #------------------------------

  # Routes for the Player resource:
  # CREATE
  get('/players/new', { :controller => 'players', :action => 'new' })
  get('/create_player', { :controller => 'players', :action => 'create' })

  # READ
  get('/players', { :controller => 'players', :action => 'index' })
  get('/players/:id', { :controller => 'players', :action => 'show' })

  # UPDATE
  get('/players/:id/edit', { :controller => 'players', :action => 'edit' })
  get('/update_player/:id', { :controller => 'players', :action => 'update' })

  # DELETE
  get('/delete_player/:id', { :controller => 'players', :action => 'destroy' })


  # get('/my_players',         { :controller => 'players', :action => 'user' })
  get('/my_players',    { :controller => 'players', :action => 'my_players' })
  get('/my_players_plays',    { :controller => 'players', :action => 'my_players_plays' })
  # Routes for the Owned_player resource:
  # CREATE
  get('/owned_players/new', { :controller => 'owned_players', :action => 'new' })
  get('/create_owned_player', { :controller => 'owned_players', :action => 'create' })
  get('/create_owned_player/:id', { :controller => 'owned_players', :action => 'create' })

  # READ
  get('/owned_players', { :controller => 'owned_players', :action => 'index' })
  get('/owned_players/:id', { :controller => 'owned_players', :action => 'show' })

  # UPDATE
  get('/owned_players/:id/edit', { :controller => 'owned_players', :action => 'edit' })
  get('/update_owned_player/:id', { :controller => 'owned_players', :action => 'update' })

  # DELETE
  get('/delete_owned_player/:id', { :controller => 'owned_players', :action => 'destroy' })
  #------------------------------


  #------------------------------



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
