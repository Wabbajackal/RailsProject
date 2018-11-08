# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Specialty.destroy_all
Hunter.destroy_all
# Specie.destroy_all
specie = Specie.create(name: 'Human', specie_type: 'Humanoid')
specie.Hunter.create(name: 'Dean Winchester', description: 'So very angry', cost: 59.99)
