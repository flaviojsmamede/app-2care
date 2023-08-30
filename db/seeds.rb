# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Option.destroy_all
Category.destroy_all
Resident.destroy_all
User.destroy_all

category1 = Category.create(name: "sleep")

Option.create(name: "good", category: category1)
Option.create(name: "medium", category: category1)
Option.create(name: "bad", category: category1)

category2 = Category.create(name: "eat")

Option.create(name: "good", category: category2)
Option.create(name: "medium", category: category2)
Option.create(name: "bad", category: category2)

category3 = Category.create(name: "humour")

Option.create(name: "good", category: category3)
Option.create(name: "medium", category: category3)
Option.create(name: "bad", category: category3)

category4 = Category.create(name: "activities")

Option.create(name: "yoga", category: category4)
Option.create(name: "chess", category: category4)
Option.create(name: "walk", category: category4)

category5 = Category.create(name: "blood pressure")

Option.create(name: "high", category: category5)
Option.create(name: "good", category: category5)
Option.create(name: "low", category: category5)

category6 = Category.create(name: "medication")

Option.create(name: "all", category: category6)
Option.create(name: "partial", category: category6)
Option.create(name: "none", category: category6)

category7 = Category.create(name: "hygiene")

Option.create(name: "good", category: category7)
Option.create(name: "medium", category: category7)
Option.create(name: "bad", category: category7)

care_taker1 = User.create(email: "flavio@gmailcom", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
Resident.create(user_id: care_taker1.id, first_name: "Jose", last_name: "coultinho", birth_date: "15/04/1963", clinical_info: "diabetc")

care_taker2 = User.create(email: "ana@gmailcom", password: "123456", first_name: "ana", last_name: "almeida", role: "care taker")
Resident.create(user_id: care_taker2.id, first_name: "armindo", last_name: "matias", birth_date: "15/04/1963", clinical_info: "diabetc")

care_taker3 = User.create(email: "nuno@gmailcom", password: "123456", first_name: "flavio", last_name: "cassandro", role: "care taker")
Resident.create(user_id: care_taker3.id, first_name: "luana", last_name: "pereira", birth_date: "15/04/1963", clinical_info: "diabetc")

care_taker4 = User.create(email: "rodrigo@gmailcom", password: "123456", first_name: "flavio", last_name: "coelho", role: "care taker")
Resident.create(user_id: care_taker4.id, first_name: "antonio", last_name: "quaresma", birth_date: "15/04/1963", clinical_info: "diabetc")
