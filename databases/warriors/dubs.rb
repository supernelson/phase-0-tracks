# WARRIORS SCOREBOARD

# Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
score = SQLite3::Database.new('scoresheet.db')

# fancy string delimiters
players_table = <<-PLAYERS
  CREATE TABLE IF NOT EXISTS players(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    jersey INT
  )
PLAYERS

# create a table
score.execute(players_table)

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

10.times do
  create_player(score, Faker::Name.name, Faker::Number.between(1,80))
end

def points_scored()
end