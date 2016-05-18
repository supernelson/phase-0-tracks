# TAIWAN ENGINEERING TALENT PLATFORM

# Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
engineers = SQLite3::Database.new('engineer.db')

# fancy string delimiters for my tables
engineer_table = <<-ENGINEER
  CREATE TABLE IF NOT EXISTS engineers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    skills VARCHAR(255),
    language VARCHAR(255),
    interview BOOLEAN,
  )
ENGINEER

client_table = <<-CLIENT
  CREATE TABLE IF NOT EXISTS clients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    skills VARCHAR(255),
    language VARCHAR(255),
    interview BOOLEAN,
    )
  CLIENT

project_table = <<-PROJECT
  CREATE TABLE IF NOT EXISTS projects(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    specs VARCHAR(255),
    skills VARCHAR(255),
    dates VARCHAR(255)
    )
  PROJECT

# create a table
engineers.execute(engineer.db)

# add Steph Curry to our players table
#score.execute("INSERT INTO players (name, jersey) VALUES ('Stephen Curry', 30)")

# explore ORM by retrieving database
roster = score.execute ("SELECT name, jersey FROM players")
i = 0
roster.each do |player|
  puts "#{player}"
end

def create_player(score, name, jersey)
  score.execute("INSERT INTO players (name, jersey) VALUES (?, ?)", [name, jersey])
end

def make_team
  10.times do
    create_player(score, Faker::Name.name, Faker::Number.between(1,80))
  end
end

def current_game
  puts "Welcome to the NBA Western Conference Finals!"
  puts ""
end