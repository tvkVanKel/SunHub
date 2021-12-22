local check = {
  [1730877806] = "https://raw.githubusercontent.com/tvkVanKel/SunHub/main/Grand%20Piece%20Online.lua",
  [3978370137] = "https://raw.githubusercontent.com/tvkVanKel/SunHub/main/Grand%20Piece%20Online.lua",
  [1537690962] = "https://github.com/tvkVanKel/SunHub/raw/main/Bee%20Swarm%20Simulator.lua",
  [6299805723] = "https://raw.githubusercontent.com/tvkVanKel/SunHub/main/Anime%20Fighter%20Simulator.lua"
}
if check[game.PlaceId] then 
  loadstring(game:HttpGet(check[game.PlaceId]))()
 else
  game.Players.LocalPlayer:Kick("Game deo support execute cc")
end
