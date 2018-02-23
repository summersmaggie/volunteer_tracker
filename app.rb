require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/project")
require("./lib/volunteer")
require("pg")
require("pry")

DB = PG.connect({:dbname => "volunteer_tracker"})

get('/') do
  erb(:home)
end

post('/projects') do
  title = params.fetch('title')
  project = Project.new({:title => title, :id => nil})
  project.save()
  erb(:project_success)
end

get('/projects') do
  @projects = Project.all()
  erb(:projects)
end
