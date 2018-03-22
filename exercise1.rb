

trains=[
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#=================   Exercise 1   =================

train111 = []

trains.each do |hash|
  if hash[:train] == "111"
    train111.push (hash[:direction])
  end
end

puts "the direction of trains 111 is #{train111}\n\n"


#=================   Exercise 2   =================

train80b =[]

trains.each do |hash|
  if hash[:train] == "80B"
    train80b.push (hash[:frequency_in_minutes])
  end
end

puts "the frequency of train 80B is #{train80b}\n\n"


#=================   Exercise 3   =================

train610 =[]

trains.each do |hash|
  if hash[:train] == "610"
    train610.push (hash[:direction])
  end
end

puts "the direction of train 610 is #{train610}\n\n"


#=================   Exercise 4   =================

northtrains =[]

trains.each do |hash|
  if hash[:direction] == "north"
    northtrains.push (hash[:train])
  end
end

puts "the trains going north are#{northtrains}\n\n"

#=================   Exercise 5   =================

easttrains =[]

trains.each do |hash|
  if hash[:direction] == "east"
    easttrains.push (hash[:train])
  end
end

puts "the trains going north are#{easttrains}\n\n"

#=================   Exercise 6   =================


def dirtrain (direction,list)
  trains_direction = []
   list.each do |hash|
     if hash[:direction] == direction
       trains_direction.push (hash[:train])
     end
  end
  puts "the trains going #{direction} are #{trains_direction}"
end

dirtrain("north", trains)

dirtrain("east", trains)

#=================   Exercise 7  =================

trains[2][:first_departure_time] = 13

puts trains[2]
