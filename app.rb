require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      # binding.pry
      erb :'pirates/new'
    end

  end
end
