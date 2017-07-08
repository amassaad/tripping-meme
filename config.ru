require 'dashing'
require 'haml'

configure do
  set :auth_token, 'YOUR_AUTH_TOKEN'
  set :default_dashboard, 'index'
  set :protection, :except => :frame_options
end

configure :production do
  require 'newrelic_rpm'
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application
