require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        Ships.new(ship)
        binding.pry
      end

      # @ships = ship.all

      erb :'pirates/show'
    end

  end
end
