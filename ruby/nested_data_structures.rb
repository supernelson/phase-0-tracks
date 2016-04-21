sports = {
  soccer: {
   premier_league:
   ["Leicester City", "Manchester City", "Stoke City", "Chelsea", "Tottenham", "Arsenal", "Manchester United", "Liverpool"],
   },
  baseball_players: ["Bumgarner", "Posey", "Cueto", "Pence", "Span"],
  sharks: {players: ["Pavelski", "Thornton", "Burns", "Marleau", "Jones", "Couture"]},
}

basketball = ["steph curry", "klay thompson", ["steve kerr", ["baron davis", "stephen jackson", "jason richardson"], "luke walton"], "draymond green", "andrew bogut", "harrison barnes"]

#return Arsenal within Soccer
print sports[:soccer][:premier_league][5] + "\n"
#return Posey within Baseball
print sports[:baseball_players][1] + "\n"
#return all players within Sharks
print sports[:sharks][:players].to_s + "\n"
#return Sharks players Thornton, Burns, and Marleau
print sports[:sharks][:players][1..3].to_s + "\n"
#return Luke Walton in Basketball
print basketball[2][2] + "\n"
#return jason richardson in Basketball
print basketball[2][1][2] + "\n"
#return all basketball
print basketball