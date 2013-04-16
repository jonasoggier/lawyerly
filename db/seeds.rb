# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

namecounter = 1

50.times do 
	user = User.create(first_name: first_names[namecounter-1], last_name: last_names[namecounter-1], email: '#{first_names[counter-1]}.#{last_names[counter-1]}@gmail.com', teaser: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua.', description: 'Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua.', password: 'testttt')
 	15.times do
 		user.posts.create(title: 'Lorem ipsum dolor sit amet', body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.') 
 	end
 	namecounter += 1
end

500.times do 
	relationship = Relationship.create(user_id: Random.rand(25), followed_user_id: (Random.rand(50)-25))
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