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
    if !params["title"]["name"].empty?
      @figure.titles << Title.create(name: params["name"])
    end
    if !params["landmark"]["name"].empty?
      @figure.landmarks << Landmark.create(name: params["name"])
    end
    redirect to "/figures/#{@figure.id}"
  end


  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    #binding.pry
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  post '/figures/:id/edit' do
    
  end


end
