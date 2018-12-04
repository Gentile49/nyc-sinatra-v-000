class FiguresController < ApplicationController
  # add controller methods

  get "/figures" do
    @figures = Figure.all
    erb :"figures/index"
  end

  get "/figures/new" do
    erb :"figures/new"
  end

  get "/figures/:id" do
     @figure = Figure.find_by_id(params[:id])
     erb :"figures/show"
  end

  post "/figures" do
    figure = Figure.new(params[:figure])
    landmark = Landmark.where(params[:landmark]).first_or_initialize
    title = Title.where(params[:title]).first_or_initialize
    figure.landmark = landmark
    figure.title = title
    figure.save!

    redirect "/figures/#{figure.id}"
  end

  get '/figures/:id/edit' do
    @figure = Figure.find_by_id(params[:id])
    erb :'figures/edit'
  end

end
