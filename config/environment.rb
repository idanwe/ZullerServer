# Load the rails application
require File.expand_path('../application', __FILE__)

# Load the app's custom environment variables here,
# so that they are loaded before environments/*.rb
app_env = File.join(Rails.root, '.env')
load(app_env) if File.exists?(app_env)

# Initialize the rails application
ZS::Application.initialize!
