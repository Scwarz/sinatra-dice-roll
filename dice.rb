require "sinatra"
require "sinatra/reloader"

get("/") do
  "<h1>DICE ROLL</h1>
  <a href='/dice/2/6'>Roll 2 6-sided dice</a><br>
  <a href='/dice/2/10'>Roll 2 10-sided dice</a><br>
  <a href='/dice/1/20'>Roll 1 20-sided dice</a><br>
  <a href='/dice/5/4'>Roll 5 4-sided dice</a>"
end
get("/zebra") do
  "We must add a route for each path we want to support"
end
get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end
#dice 2/6
get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end
#dice 2/10
get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d10</h1>
   <p>#{outcome}</p>"
end
#dice/1/20
get("/dice/1/20") do
  first_die = rand(1..20)
  
  sum = first_die
	
  outcome = "You rolled a #{first_die} for a total of #{sum}."
	
  "<h1>1d20</h1>
   <p>#{outcome}</p>"
end
#dice/5/4
get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} and a #{third_die} and a #{fourth_die} and a #{fifth_die} for a total of #{sum}."
	
  "<h1>5d4</h1>
   <p>#{outcome}</p>"
end
