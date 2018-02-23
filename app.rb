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

get('/projects/:id') do
  @project = Project.find(params.fetch("id").to_i())
  erb(:project)
end

get('/projects/:id/edit') do
  @project = Project.find(params.fetch("id").to_i())
  erb(:project_edit)
end

patch("/projects/:id") do
  title = params.fetch("title")
  @project = Project.find(params.fetch("id").to_i())
  @project.update({:title => title})
  erb(:project)
end

delete("/projects/:id") do
  @project = Project.find(params.fetch("id").to_i())
  @project.delete()
  @projects = Project.all()
  erb(:home)
end

post('/project/volunteers') do
  name = params.fetch("name")
  project_id = params.fetch("project_id").to_i()
  @project = Project.find(project_id)
  @volunteer = Volunteer.new({:name => name, :project_id => project_id})
  @volunteer.save()
  erb(:project)
end

get('/volunteers/:id') do
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  erb(:volunteer)
end

get('/volunteers/:id/edit') do
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  erb(:volunteer_edit)
end

patch("/volunteers/:id") do
  name = params.fetch("name")
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  @volunteer.update({:name => name})
  erb(:volunteer)
end

delete("/volunteers/:id") do
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  @volunteer.delete()
  @volunteers = Project.all()
  erb(:home)
end
