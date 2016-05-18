# TAIWAN ENGINEERING TALENT PLATFORM

# Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
## is this a database Class??
engineers = SQLite3::Database.new('engineer.db')
clients = SQLite3::Database.new('client.db')
projects = SQLite3::Database.new('project.db')
combined = SQLite3::Database.new('combined.db')
# fancy string delimiters: creating table values
## does Naming of engineers on 18 need to match the line 11 name??
engineer_table = <<-ENGINEER
  CREATE TABLE IF NOT EXISTS engineers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    job VARCHAR(255),
    language VARCHAR(255),
    interview BOOLEAN
  )
ENGINEER

client_table = <<-CLIENT
  CREATE TABLE IF NOT EXISTS clients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    company VARCHAR(255),
    industry VARCHAR(255),
    language VARCHAR(255),
    interview BOOLEAN
    )
  CLIENT

project_table = <<-PROJECT
  CREATE TABLE IF NOT EXISTS projects(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    details VARCHAR(255),
    skills VARCHAR(255),
    completion_dates VARCHAR(255)
    )
  PROJECT

combined_table = <<-COMBINED
  CREATE TABLE IF NOT EXISTS combined(
    id INTEGER PRIMARY KEY,
    FOREIGN KEY (engineer_id) REFERENCES engineers(id)),
    FOREIGN KEY (engineer_name) REFERENCES engineers(name),
    FOREIGN KEY (client_id) REFERENCES clients(id)),
    FOREIGN KEY (client_company) REFERENCES clients(company),
    FOREIGN KEY (project_id) REFERENCES projects(id))
    FOREIGN KEY (project_name) REFERENCES projects(name),
  COMBINED

# create a database
engineers.execute(engineer.db)
clients.execute(client.db)
projects.execute(project.db)
combined.execute(combined.db)

# testing our tables
engineers.execute("INSERT INTO engineers (name, job, language, interview) VALUES ('Nelson Chen', 'Front End Engineer', 'English/Mandarin', 'Yes')")
clients.execute("INSERT INTO clients (name, company, industry, language, interview) VALUES ('Garrett Gan', 'Thalamus', 'Ad Tech', 'English', 'No')")
projects.execute("INSERT INTO projects (name, details, skills, dates) VALUES ('Website Refresh', 'Need website detailing', 'Javascript/Photoshop', '06/15/16')")

# explore ORM by retrieving database
engineers.execute ("SELECT * FROM combined")
clients.execute ("SELECT * FROM combined")
projects.execute ("SELECT * FROM combined")
combined.execute ("SELECT * FROM combined")

# i = 0
# roster.each do |player|
#   puts "#{player}"
# end

# def create_player(score, name, jersey)
#   score.execute("INSERT INTO players (name, jersey) VALUES (?, ?)", [name, jersey])
# end

# def make_team
#   10.times do
#     create_player(score, Faker::Name.name, Faker::Number.between(1,80))
#   end
# end

# def current_game
#   puts "Welcome to the NBA Western Conference Finals!"
#   puts ""
# end