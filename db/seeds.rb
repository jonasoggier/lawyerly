# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


week_counter = 1


week_array = ["week1", "week2", "week3", "week4", "week5", "week6", "week7", "week8", "week9"]
day_array = ["day1", "day2", "day3", "day4", "day5"]

9.times do 
	week_name = Week.create(name: week_array[week_counter-1], week_number: week_counter)
	day_counter = 1
 	5.times do
 		week_name.days.create(day_of_week: day_counter) 
 		day_counter+= 1
 	end
 	week_counter += 1
end


last_names = %w[
Malcom
Maybee
Keiko
Yeats
Alishia
Gillum
Adrianna
People
Majorie
Kimmell
Tifany
Rooker
Andres
Iddings
Porter
Lauderback
Harlan
Hilton
Luella
Coller
Shay
Mcguinness
Lyndsay
Gilpin
Buford
Guarino
Zetta
Suda
Shondra
Glidewell
Dania
Thrash
Zelda
Nutting
Emelia
Trinidad
Jodee
Royster
Rivka
Mauch
Salena
Orrell
Sheri
Kellerman
Mandi
Waring
Eugena
Kirby
Malinda
Gravely]

first_names = %w[
Ashly
Jake
Carmela
Larraine
Willard
Kelly
Claud
Angeles
Barney
Zola
Desmond
Vern
Amy
Damien
Jesica
Francie
Lea
Cornell
Nathanael
Arlena
Delmar
Erwin
Latoyia
Mildred
Johanne
Etta
Elvira
Shavonne
Classie
Doretta
Dorian
Kyla
Sanda
Jayson
Lorita
Bernarda
Divina
Jen
Glady
Blaine
Pearle
Jerold
Candy
Gladys
Quiana
Flossie
Marline
Sheridan
Nana
Carlos]