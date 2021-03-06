# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'/messages/index'
end

get '/messages/new' do
  @message = Message.new
  erb :'/messages/new'
end

get '/messages/:id' do
  @message = Message.find(params[:id])
  @other_messages_by_author = Message.where("author = ? AND id != ?", @message.author, params[:id])

  erb :'messages/show'
end

post '/messages' do
  @message = Message.new(
    url: params[:url],
    content: params[:content],
    author:  params[:author]
  )
  if @message.save
    redirect '/messages'
  else
    erb :'messages/new'
  end
end