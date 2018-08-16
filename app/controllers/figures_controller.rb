class FiguresController < ApplicationController

  get '/figures' do
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    if !params[:title][:name].empty?
<<<<<<< HEAD
      @figure.titles << Title.create(params[:title])
    end
    if !params[:landmark][:name].empty?
      new_landmark = Landmark.create(params[:landmark])
      @figure.landmarks << new_landmark
=======
      @figure.title = Title.find_or_create_by(name: params[:title][:name])
    end
    if !params[:landmark][:name].empty?
      new_landmark = Landmark.find_or_create_by(name: params[:landmark][:name])
      new_landmark.year_completed = params[:landmark][:year_completed]
      new_landmark.save
      @figure.landmark = new_landmark
>>>>>>> 46cc81bec61cf4c14881ba6acfbd8890ee187f00
    end
    @figure.save
    redirect "/figures/#{@figure.id}"
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :'/figures/edit'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end

  post '/figures/:id' do
    @figure = Figure.find(params[:id])
    @figure.update(params[:figure])
    if !params[:title][:name].empty?
<<<<<<< HEAD
      @figure.titles << Title.create(params[:title])
    end
    if !params[:landmark][:name].empty?
      new_landmark = Landmark.create(params[:landmark])
      @figure.landmarks << new_landmark
=======
      @figure.title = Title.find_or_create_by(name: params[:title][:name])
    end
    if !params[:landmark][:name].empty?
      new_landmark = Landmark.find_or_create_by(name: params[:landmark][:name])
      new_landmark.year_completed = params[:landmark][:year_completed]
      new_landmark.save
      @figure.landmark = new_landmark
>>>>>>> 46cc81bec61cf4c14881ba6acfbd8890ee187f00
    end
    @figure.save
    redirect "/figures/#{@figure.id}"
  end

end
