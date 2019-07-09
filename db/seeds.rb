# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

University.delete_all
u1 = University.create!(name: "Universidade de Brasilia")

Ej.destroy_all
ej1 = Ej.create!(name: "CJR", university_id: u1.id)

User.destroy_all
u1 = User.create(   name: 'Admin', 
                    email:'admin@admin.com',
                    password:'123456',
                    password_confirmation: '123456',
                    admin:true,
                    ej_id: ej1.id) 
u2 = User.create(   name: 'User', 
                    email:'user@user.com',
                    password:'123456',
                    password_confirmation: '123456',
                    ej_id: ej1.id)

Publication.destroy_all
p1 = Publication.create!(title: "First Post!!!", content: "Testaaaaaando esse poooooosssttttt.", user: u1, publication_type: 0)

Tag.destroy_all
Tag.create!(name: "Administrativo")
Tag.create!(name: "Financeiro")