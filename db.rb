begin
  require_relative '.env.rb'
rescue LoadError
# ignored
end

require 'sequel/core'

# Delete APP_DATABASE_URL from the environment, so it isn't accidentally
# passed to subprocesses.  APP_DATABASE_URL may contain passwords.
# DB = Sequel.connect(ENV.delete('APP_DATABASE_URL') || ENV.delete('DATABASE_URL'))
# jdbc:postgresql


DB = Sequel.connect('jdbc:postgresql://localhost/eml-rails_development?user=claudiu')
