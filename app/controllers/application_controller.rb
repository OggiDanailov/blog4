class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

require 'mw_dictionary_api'

client = MWDictionaryAPI::Client.new(ENV['MW_SD4_API_KEY'])
p client

end
