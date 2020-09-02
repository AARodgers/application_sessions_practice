class PostsController < ApplicationController

    get '/posts' do
        "A list of publically available posts"
        # "You are logged in as #{session[:email]}"
    end

end
