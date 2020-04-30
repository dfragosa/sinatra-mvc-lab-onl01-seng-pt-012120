require 'pry'
require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
      erb :user_input
  end
  
  post '/piglatinize' do 
    user_text = params[:user_phrase]
    @piglatin = PigLatinizer.new(user_text)
      erb :results
  end

end