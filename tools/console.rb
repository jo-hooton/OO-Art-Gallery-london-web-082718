require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rwhiteread = Artist.new("Rachel Whiteread", 30)
tdean = Artist.new("Tacita Dean", 31)
slucas = Artist.new("Sarah Lucas", 32)
gwearing = Artist.new("Gillian Wearing", 33)

tateb = Gallery.new("Tate Britain", "London")
hayward = Gallery.new("Hayward Gallery", "London")
hauser = Gallery.new("Hauser and Wirth", "Zurich")
white_cube = Gallery.new("White Cube", "London")
mac = Gallery.new("The MAC", "Belfast")

dueporte = Painting.new("Due Porte", 2016, rwhiteread, tateb)
stairs = Painting.new("Stairs", 1995, rwhiteread, tateb)
chicken_shed = Painting.new("Chicken Shed", 2017, rwhiteread, hauser)
sea = Painting.new("Disappearance at Sea", 1996, tdean, hauser)
majesty = Painting.new("Majesty", 2006, tdean, hayward)
chicken_knickers = Painting.new("Chicken Knickers", 1997, slucas, white_cube)
fried_eggs = Painting.new("Self Portrait with Fried Eggs", 1996, slucas, mac)
pauline_bunny = Painting.new("Pauline Bunny", 1997, slucas, hauser)
confess = Painting.new("Confess All On Video. Don't Worry, You Will Be in Disguise. Intrigued? Call Gillian Version II", 1994, gwearing, mac)
self_portait = Painting.new("Self Portrait as My Mother Jean Greogory", 2003, gwearing, white_cube)


binding.pry
0
