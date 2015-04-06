require 'bundler'
Bundler.require

# set the pathname for the root of the app
require 'pathname'
require 'tilt/erb'
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

# require the controller(s)
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }

# require the model(s)
Dir[APP_ROOT.join('app', 'models', '*.rb')].each { |file| require file }

# configure LightningTalkApp settings
class LightningTalkApp < Sinatra::Base
  set :method_override, true
  set :root, APP_ROOT.to_path
  set :views, File.join(LightningTalkApp.root, "app", "views")
  set :public_folder, File.join(LightningTalkApp.root, "app", "public")
end