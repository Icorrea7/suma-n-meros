require 'sinatra'

get '/' do
  if params[:cont]
    @cont = params[:cont]
  else
    @cont = 0
  end
  erb :index
end

post '/suma' do
  @cont = (params[:cont]).to_i  + 1
  redirect "/?cont=#{@cont}"
end
