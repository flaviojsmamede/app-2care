# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
