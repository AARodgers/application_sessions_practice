class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        set :sessions_secret, "secret"
    end

    helpers do

        def logged_in?
            !!session[:email]
        end
    end

    def login(email)
        session[:email] = email
    end

    def logout!
        session.clear
    end
end
