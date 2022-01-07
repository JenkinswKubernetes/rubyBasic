require "sinatra"

# show
def readWorkshopContent(name)
  File.read("workshops/#{name}.txt")
rescue Errno:: ENOENT
  return nil
end

# save
def saveWorkshop(name, content)
  File.open("workshops/#{name}.txt", "w") do |file|
    file.print(content)
  end
end

# delete
def deleteWorkshop(name)
  File.delete("workshops/#{name}.txt")
end

get '/' do
  @files = Dir.entries("workshops")
  erb :home
end

# region :: form
# create
get '/new'do
  erb :create
end

get '/:name'do
  @name = params[:name]
  @content = readWorkshopContent(@name)
  erb :course
end

# update
get "/:name/edit" do
  @name = params[:name]
  @content = readWorkshopContent(@name)
  erb :edit
end

post '/create' do
  @name = params["nameInput"]
  @content = params["descriptionInput"]
  @message = "creado"
  saveWorkshop(@name, @content)
  erb :successMessage
end

#delete
delete '/:name' do
  deleteWorkshop(params[:name])
  @name = params["name"]
  @message = "eliminado"
  erb :successMessage
end

# update
put '/:name' do
  @name = params["name"]
  saveWorkshop(@name, params["content"])
  @message = "update"
  erb :successMessage
end
# endregion
