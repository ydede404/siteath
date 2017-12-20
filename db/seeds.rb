# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Seed Premier User
User.create!(email: "test@test.com",
             password:              "password",
             password_confirmation: "password"
             )

# Seed Premiere Prestation
Prestation.create!(name: "Le clown de Paris",
    categorie: "Théatre",
    description: "Un clown amusant, poétique, qui fait le plus grand bonheur des touristes",
    tarif: "30 euros",
    duree: "1 heure",
    lieu: "Montmartre",
    lien: "clown_montmartre@facebook.com",
    user_id: "1",
    image_name:"guitariste"
    )
