 # ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require "dotenv"
require 'twitter'
 Dotenv.load
# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

# ligne qui permet de tweeter
client.update('mon premier twitte')