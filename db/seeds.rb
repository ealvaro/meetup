# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mik = User.create(first_name: 'Michael', last_name: 'Beams')
dre = User.create(first_name: 'Drew', last_name: 'Ulmer')
nic = User.create(first_name: 'Nick', last_name: 'Zielinski')
alv = User.create(first_name: 'Alvaro', last_name: 'Escobar')
kat = User.create(first_name: 'Katie', last_name: 'Fornes')
gr1 = Group.create(name: 'Javascript')
gr2 = Group.create(name: 'Ruby on Rails')
gr3 = Group.create(name: 'React')
rl1 = Role.create(name: 'Organizer', user: mik, group: gr1)
rl2 = Role.create(name: 'Presenter', user: alv, group: gr1)
rl3 = Role.create(name: 'Participant', user: dre, group: gr1)
rl4 = Role.create(name: 'Participant', user: nic, group: gr1)
rl5 = Role.create(name: 'Organizer', user: dre, group: gr2)
rl6 = Role.create(name: 'Presenter', user: nic, group: gr2)
rl7 = Role.create(name: 'Participant', user: alv, group: gr2)
rl8 = Role.create(name: 'Participant', user: mik, group: gr2)
rl9 = Role.create(name: 'Organizer', user: alv, group: gr3)
rl0 = Role.create(name: 'Organizer', user: kat, group: gr1)
