
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do
    erb :new
  end

  get '/posts' do
    @posts = Post.new(params[:post])

    erb :index
  end

  get '/posts/:id' do
    postsparams[:id]]

    erb :show
  end
end
