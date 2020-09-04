class PostsController < ApplicationController

    get '/posts' do
      "A list of publically available posts"
      # "You are logged in as #{session[:email]}"
    end

    get '/posts/new' do
      # checks to see if they are logged in ( won't be if there is no email)
      if !session[:email]
          redirect '/login' # redirect if they aren't logged in
      else
          "a new post form" #rendering if they are
      end
    end

    get '/posts/:id/edit' do
      if !session[:email]
          redirect '/login'
      else
          "a edit post form"
      end
    end
end
