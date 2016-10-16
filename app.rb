require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
      new_instance = PigLatinizer.new
      @revised_string = new_instance.to_pig_latin(params[:user_phrase])
      erb :piglatinize
  end
end
