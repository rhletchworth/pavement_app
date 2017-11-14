class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  #EventfulApi.configure do |config|
    #config.application_key = ENV[“eventful_api_app_key”]
    #config.consumer_key = ENV[“oauth_consumer_key”]
    #config.consumer_secret = ENV[“oauth_consumer_secret_key”]
  #end
end
