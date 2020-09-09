require_relative './config/environment'
# require_relative './app/controllers/application_controller'
# require_relative './app/controllers/posts_controller'
# require_relative './app/controllers/sessions_controller'
# require_relative './app/controllers/users_controller'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use Rack::Session::Cookie, secret: 'ah9X2tWF/GzQCDE1ANKf5A=='

use SessionsController
use PostsController
use UsersController
run ApplicationController
