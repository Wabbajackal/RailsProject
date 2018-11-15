# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Specialty.destroy_all
Hunter.destroy_all
Specie.destroy_all

# AdminUser.create!(email: 'thicksonsean@gmail.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Specie.create(name: 'Human', specie_type: 'Humanoid')
Specie.create(name: 'Human(Mutate)', specie_type: 'Humanoid')
Specie.create(name: 'Human(Mutant)', specie_type: 'Humanoid')
Specie.create(name: 'Witch', specie_type: 'Humanoid')
Specie.create(name: 'Angel', specie_type: 'Monster')
Specie.create(name: 'Demon', specie_type: 'Monster')
Specie.create(name: 'Dragon', specie_type: 'Monster')
Specie.create(name: 'Ghost', specie_type: 'Monster')
Specie.create(name: 'Ghoul', specie_type: 'Monster')
Specie.create(name: 'Werewolf', specie_type: 'Monster')
Specie.create(name: 'Vampire', specie_type: 'Monster')
Specie.create(name: 'Zombie', specie_type: 'Monster')
Specie.create(name: 'Chiss', specie_type: 'Alien')
Specie.create(name: 'Ewok', specie_type: 'Alien')
Specie.create(name: 'Geonosian', specie_type: 'Alien')
Specie.create(name: 'Gungan', specie_type: 'Alien')
Specie.create(name: 'Jawa', specie_type: 'Alien')
Specie.create(name: 'Kel Dor', specie_type: 'Alien')
Specie.create(name: 'Mon Calamari', specie_type: 'Alien')
Specie.create(name: 'Rodian', specie_type: 'Alien')
Specie.create(name: 'Sith Pureblood', specie_type: 'Alien')
Specie.create(name: "Tw'lek", specie_type: 'Alien')
Specie.create(name: 'Skrull', specie_type: 'Alien')
Specie.create(name: 'Kree', specie_type: 'Alien')
Specie.create(name: 'Xenomorph', specie_type: 'Alien')
Specie.create(name: 'Trandoshan', specie_type: 'Alien')
Specie.create(name: 'Droid', specie_type: 'Alien')
Specie.create(name: 'Clawdite', specie_type: 'Alien')
Specie.create(name: 'Dathomirian', specie_type: 'Alien')
Specie.create(name: 'Duros', specie_type: 'Alien')
Specie.create(name: 'Czarnian', specie_type: 'Alien')
Specie.create(name: 'Yautja', specie_type: 'Alien')

Hunter.create(name: 'Dean Winchester', description: 'So very angry', cost: '59.99')
Hunter.create(name: 'Sam Winchester', description: 'Moose', cost: '79.99')
Hunter.create(name: 'Mary Winchester', description: 'Momchester', cost: '79.99')
Hunter.create(name: 'Castiel', description: 'Like a dog, but not', cost: '79.99')
Hunter.create(name: 'Arthur Ketch', description: 'Asshole', cost: '79.99')
Hunter.create(name: 'Bobby Singer', description: 'Idjits', cost: '79.99')
Hunter.create(name: 'Boba Fett', description: 'Extended Universe', cost: '79.99')
Hunter.create(name: 'Jango Fett', description: 'Fathers day must be nuts', cost: '79.99')
Hunter.create(name: 'Bossk', description: 'The OG lizard person', cost: '79.99')
Hunter.create(name: 'IG-88', description: 'Man, that time he took over the Death Star was dope', cost: '79.99')
Hunter.create(name: 'Zam Wesell', description: 'Star Wars', cost: '79.99')
Hunter.create(name: 'Dengar', description: 'Swoopbike crash?', cost: '79.99')
Hunter.create(name: 'Asajj Ventress', description: 'Star Wars', cost: '79.99')
Hunter.create(name: 'Cad Bane', description: 'The hat never goes out of style', cost: '79.99')
Hunter.create(name: "Duane 'Dog' Chapman", description: 'Dog the Bounty Hunter', cost: '79.99')
Hunter.create(name: 'The Doom Slayer', description: 'Rip and Tear', cost: '79.99')
Hunter.create(name: 'Lobo', description: 'DC', cost: '79.99')
Hunter.create(name: 'Deadpool', description: 'Marvel', cost: '79.99')
Hunter.create(name: 'Cable', description: 'Marvel', cost: '79.99')
Hunter.create(name: 'Bullseye', description: 'Marvel', cost: '79.99')
Hunter.create(name: "Bu'soor", description: 'Predator', cost: '79.99')

Hunter.all.each do |person|
  Specie.all.each do |type|
    Specialty.create(hunter: person, specie: type, modifier: '1')
  end
end
