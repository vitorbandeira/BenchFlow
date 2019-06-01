# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = University.create!(name: "Universidade de Brasilia")

ej1 = Ej.create!(name: "CJR", university_id: u1.id)

users = User.create([{  name: 'Admin', 
                        email:'admin@admin.com',
                        password:'123456',
                        password_confirmation: '123456',
                        admin:true,
                        ej_id: ej1.id }, 
                    {   name: 'User', 
                        email:'user@user.com',
                        password:'123456',
                        password_confirmation: '123456',
                        ej_id: ej1.id }
])

p1 = Publication.create!()