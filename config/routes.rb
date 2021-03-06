Rails.application.routes.draw do

  root 'welcome#index'

  get "/contact" => "welcome#contact"
  get "/faq" => "welcome#faq"
  get "/legal" => "welcome#legal"

  resources :users
  resources :transactions
  resources :points_transfer, only: [:new, :create]

  resources :posts do
    resources :comments
  end


  get  "/login"  => "session#new"
  post "/session" => "session#create"
  get  "/logout"  => "session#destroy"


end

# sweet sweet routes:

#              Prefix Verb   URI Pattern                                 Controller#Action
#                  root GET    /                                           welcome#index
#               contact GET    /contact(.:format)                          welcome#contact
#                   faq GET    /faq(.:format)                              welcome#faq
#                 legal GET    /legal(.:format)                            welcome#legal
#                 users GET    /users(.:format)                            users#index
#                       POST   /users(.:format)                            users#create
#              new_user GET    /users/new(.:format)                        users#new
#             edit_user GET    /users/:id/edit(.:format)                   users#edit
#                  user GET    /users/:id(.:format)                        users#show
#                       PATCH  /users/:id(.:format)                        users#update
#                       PUT    /users/:id(.:format)                        users#update
#                       DELETE /users/:id(.:format)                        users#destroy
#          transactions GET    /transactions(.:format)                     transactions#index
#                       POST   /transactions(.:format)                     transactions#create
#       new_transaction GET    /transactions/new(.:format)                 transactions#new
#      edit_transaction GET    /transactions/:id/edit(.:format)            transactions#edit
#           transaction GET    /transactions/:id(.:format)                 transactions#show
#                       PATCH  /transactions/:id(.:format)                 transactions#update
#                       PUT    /transactions/:id(.:format)                 transactions#update
#                       DELETE /transactions/:id(.:format)                 transactions#destroy
# points_transfer_index POST   /points_transfer(.:format)                  points_transfer#create
#   new_points_transfer GET    /points_transfer/new(.:format)              points_transfer#new
#         post_comments GET    /posts/:post_id/comments(.:format)          comments#index
#                       POST   /posts/:post_id/comments(.:format)          comments#create
#      new_post_comment GET    /posts/:post_id/comments/new(.:format)      comments#new
#     edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format) comments#edit
#          post_comment GET    /posts/:post_id/comments/:id(.:format)      comments#show
#                       PATCH  /posts/:post_id/comments/:id(.:format)      comments#update
#                       PUT    /posts/:post_id/comments/:id(.:format)      comments#update
#                       DELETE /posts/:post_id/comments/:id(.:format)      comments#destroy
#                 posts GET    /posts(.:format)                            posts#index
#                       POST   /posts(.:format)                            posts#create
#              new_post GET    /posts/new(.:format)                        posts#new
#             edit_post GET    /posts/:id/edit(.:format)                   posts#edit
#                  post GET    /posts/:id(.:format)                        posts#show
#                       PATCH  /posts/:id(.:format)                        posts#update
#                       PUT    /posts/:id(.:format)                        posts#update
#                       DELETE /posts/:id(.:format)                        posts#destroy
#                 login GET    /login(.:format)                            session#new
#               session POST   /session(.:format)                          session#create
#                logout GET    /logout(.:format)                           session#destroy
