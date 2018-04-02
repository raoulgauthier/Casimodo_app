# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.delete_all
Workorder.delete_all
User.delete_all

users = User.create!([
{ email: 'Don.Draper@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager', name: "Don" },
{ email: 'Roger.Sterling@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager', name: "Roger"},
{ email: 'rarakr@hotmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager', name: "Raoul le crado" },
{ email: 'Pete.Campbell@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager', name: "Pete" },
{ email: 'Joan.Harris@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager', name: "Joan" },
{ email: 'Walter.White@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Walter" },
{ email: 'Jesse.Pinkman@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Jesse" },
{ email: 'Skyler.White@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Skyler" },
{ email: 'Hank.Schrader@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Hank" },
{ email: 'Walt-Jr.White@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Walt-Jr" },
{ email: 'Marie.Schrader@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Marie" },
{ email: 'Saul.Goodman@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Saul" },
{ email: 'Gustavo.Fring@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Gustavo" },
{ email: 'Mike.Ehrmantraut@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Mike" },
{ email: 'Lydia.Quayle@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Lydia" },
{ email: 'Steven.Gomez@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Steven" },
{ email: 'Skinny.Pete@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Skinny" },
{ email: 'Ted.Beneke@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Ted" },
{ email: 'Asac.Merkert@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Asac" },
{ email: 'Tyrus.Kitt@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Tyrus" },
{ email: 'raragr@hotmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Raoul le gros" },
{ email: 'rarajr@hotmail.com', password: '123456', phone: '33 1 23 45 88 89', user_type: 'technician', name: "Raoul Gauthier" },
])
workorders = Workorder.create!([

{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,30,10,15', status:'Open' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,30,10,15', status:'Open' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,30,10,15', status:'Open' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,30,10,15', status:'Open' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,30,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,30,10,15', status:'Done' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,29,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,30,10,15', status:'In progress' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,29,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,28,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,28,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,28,10,15', status:'Done' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,31,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,31,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,31,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,31,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,4,31,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,4,01,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,4,01,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[21], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,4,01,10,15', status:'Scheduled' }
])
