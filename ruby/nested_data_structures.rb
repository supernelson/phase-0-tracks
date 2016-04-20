sports = {
  soccer: {
    premier_league: ["Leicester City", "Manchester City", "Stoke City", "Chelsea", "Tottenham", "Arsenal", "Manchester United", "Liverpool"]
  },
  baseball: ["giants", "padres", "yankees", "A's"],
  hockey: "sharks"
}

#find out Arsenal
puts sports[:soccer][:premier_league][5]
