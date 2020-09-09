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

    def login(email, password)
        user = User.find_by(:email => email)
            if user && user.authenticate(password)
                session[:email] = user.email
            else
                redirect '/login'
            end
    end
    # if it can't find a user with that email, the variable user will be nil and it will redirect

    def logout!
        session.clear
    end
end
