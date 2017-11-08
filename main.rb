require 'sinatra'
require 'slim'

get '/' do
  slim :index
end

get '/:task' do
  @task = get_task(params[:task])
  slim :task
end

def get_task(tsk)
  tsk.capitalize.gsub('-', ' ')
end