require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/projects")
require("./lib/volunteers")
require("pg")
require("pry")

DB = PG.connect({:dbname => "volunteer_tracker"})
