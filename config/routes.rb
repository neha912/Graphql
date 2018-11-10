Rails.application.routes.draw do
  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
  post "/graphql", to: "graphql#execute"
  post 'auth/login', to: 'authentication#authenticate'
  post '/signup', to: 'users#create'
end
