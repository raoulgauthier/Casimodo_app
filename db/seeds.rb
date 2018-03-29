# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Workorder.delete_all
User.delete_all

users = User.create([
{ email: 'Don.Draper@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager' },
{ email: 'Roger.Sterling@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager' },
{ email: 'Peggy.Olson@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager' },
{ email: 'Pete.Campbell@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager' },
{ email: 'Joan.Harris@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager' },
{ email: 'Walter.White@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Jesse.Pinkman@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Skyler.White@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Hank.Schrader@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Walt-Jr.White@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Marie .Schrader@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Saul.Goodman@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Gustavo.Fring@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Mike.Ehrmantraut@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Lydia.Quayle@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Steven.Gomez@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Skinny.Pete@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Ted.Beneke@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Asac.Merkert@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Tyrus.Kitt@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' },
{ email: 'Jane.Margolis@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician' }
])
workorders = Workorder.create([

{ manager: users[0], technician: users[5], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,29,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[5], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,29,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[14], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[7], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[7], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[7], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[14], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[7], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[7], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[7], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[14], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[0], technician: users[9], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[2], technician: users[9], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[2], technician: users[9], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[2], technician: users[14], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[2], technician: users[9], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[2], technician: users[9], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[2], technician: users[9], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[2], technician: users[14], address: '5 place Sainte-Gudule, bruxelles', description: 'chauffage en panne', date_planned: '2018,3,27,10,15', status:'Scheduled' },
{ manager: users[2], technician: users[7], address: '5 place Sainte-Gudule, bruxelles', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,27,10,15', status:'Scheduled' }


])
