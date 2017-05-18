class FiguresController < ApplicationController

  get '/figures/' do
    erb :'figures/index'
  end

  get '/figures/new' do
    @figures = Figure.all
    erb :'figures/new'
  end

  post '/figures' do

  end
end
