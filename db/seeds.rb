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

{ email: 'Walter.White@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager', name: "Walter White" },
{ email: 'Jesse.Pinkman@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Jesse Pinkman" },
{ email: 'Skyler.White@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager', name: "Skyler White" },
{ email: 'Hank.Schrader@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Hank Schrader" },
{ email: 'Marie.Schrader@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Marie Schrader" },
{ email: 'Saul.Goodman@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Saul Goodman" },
{ email: 'Gustavo.Fring@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'manager', name: "Gustavo Fring" },
{ email: 'Mike.Ehrmantraut@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Mike Ehrmantraut" },
{ email: 'Steven.Gomez@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Steven Gomez" },
{ email: 'Skinny.Pete@gmail.com', password: '123456', phone: '33 1 23 45 67 89', user_type: 'technician', name: "Skinny Pete" },

])
workorders = Workorder.create!([

{ manager: users[0], technician: users[1], address: '37 Bd du Roi Albert II, Schaerbeek, Belgium', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,30,10,15', status:'Open' },
{ manager: users[0], technician: users[1], address: 'Quai des Péniches 69, 1000 Bruxelles, Belgium', description: 'chauffage en panne', date_planned: '2018,3,30,10,15', status:'Open' },
{ manager: users[0], technician: users[1], address: 'Place Charles Rogier 3, 1210 Saint-Josse-ten-Noode, Belgium', description: 'climatisation 3ème étage impossible à règler', date_planned: '2018,3,30,10,15', status:'Open' },
{ manager: users[0], technician: users[1], address: '1210 Saint-Josse-ten-Noode, Belgium', description: 'ascenceur de droite bloqué au RDC', date_planned: '2018,3,30,10,15', status:'Open' },
{ manager: users[6], technician: users[7], address: '1030 Schaerbeek, Belgium', description: 'ascenceur de gauche bloqué au RDC', date_planned: '2018,3,30,10,15', status:'Scheduled' },
{ manager: users[6], technician: users[7], address: 'Avenue Louise 480, 1050 Bruxelles, Belgium', description: 'ascenceur du milieu bloqué au RDC', date_planned: '2018,2,30,10,15', status:'Closed' },
{ manager: users[6], technician: users[7], address: 'Bd Simon Bolivar 30, 1000 Bruxelles, Belgium', description: 'chauffage en panne', date_planned: '2018,2,29,10,15', status:'Scheduled' }

])
