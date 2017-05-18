class FiguresController < ApplicationController

  get '/figures' do
    #binding.pry
    @figures = Figure.all
    erb :'figures/index'
  end


  get '/figures/new' do
    @figures = Figure.all
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'figures/new'
  end



  post '/figures' do
    @figure = Figure.create(params[:figure])
    redirect to "/figures/#{@figure.id}"
  end


  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    #binding.pry
    erb :'figures/show'
  end

end
