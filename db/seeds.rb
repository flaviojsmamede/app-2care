# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning DB..."
Option.destroy_all
puts "Options deleted!"
Category.destroy_all
puts "Categories deleted!"
Resident.destroy_all
puts "Residents deleted!"
User.destroy_all
puts "Uers deleted!"
Report.destroy_all
puts "Reports deleted!"

puts "Creating new DB..."

category1 = Category.create(name: "sleep")

option1 = Option.create(name: "good", category: category1)
option2 = Option.create(name: "medium", category: category1)
option3 = Option.create(name: "bad", category: category1)

category2 = Category.create(name: "eat")

option4 = Option.create(name: "good", category: category2)
option5 =Option.create(name: "medium", category: category2)
option6 =Option.create(name: "bad", category: category2)

category3 = Category.create(name: "humour")

option7 = Option.create(name: "good", category: category3)
option8 = Option.create(name: "medium", category: category3)
option9 = Option.create(name: "bad", category: category3)

category4 = Category.create(name: "activities")

option10 = Option.create(name: "yoga", category: category4)
option11 = Option.create(name: "chess", category: category4)
option12 = Option.create(name: "walk", category: category4)

category5 = Category.create(name: "blood pressure")

option14 = Option.create(name: "high", category: category5)
option15 = Option.create(name: "good", category: category5)
option16 = Option.create(name: "low", category: category5)

category6 = Category.create(name: "medication")

option17 = Option.create(name: "all", category: category6)
option18 = Option.create(name: "partial", category: category6)
option19 = Option.create(name: "none", category: category6)

category7 = Category.create(name: "hygiene")

option20 = Option.create(name: "good", category: category7)
option21 = Option.create(name: "medium", category: category7)
option22 = Option.create(name: "bad", category: category7)

care_taker1 = User.create(email: "flavio@gmailcom", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident1 = Resident.create(user_id: care_taker1.id, first_name: "nuno", last_name: "cassandra", birth_date: "15/04/1963", clinical_info: "Insomnia", photography: "nuno.png" )
report1 = Report.create(resident_id: resident1.id)
report_category1 = ReportCategory.create(category: category4, report: report1, result: option10.name)


care_taker2 = User.create(email: "ana@gmailcom", password: "123456", first_name: "ana", last_name: "almeida", role: "care taker")
resident2 = Resident.create(user_id: care_taker2.id, first_name: "armindo", last_name: "matias", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "armindo.png")
report2 = Report.create(resident_id: resident2.id)
report_category2 = ReportCategory.create(category: category1, report: report2, result: option1.name)


care_taker3 = User.create(email: "nuno@gmailcom", password: "123456", first_name: "flavio", last_name: "cassandro", role: "care taker")
resident3 = Resident.create(user_id: care_taker3.id, first_name: "luana", last_name: "pereira", birth_date: "15/04/1963", clinical_info: "allergies", photography: "luana.png")
report3 = Report.create(resident_id: resident3.id)
report_category3 = ReportCategory.create(category: category5, report: report3, result: option16.name)


care_taker4 = User.create(email: "rodrigo@gmailcom", password: "123456", first_name: "flavio", last_name: "coelho", role: "care taker")
resident4 = Resident.create(user_id: care_taker4.id, first_name: "antonio", last_name: "quaresma", birth_date: "15/04/1963", clinical_info: "blind", photography: "antonio.png")
report4 = Report.create(resident_id: resident4.id)
report_category3 = ReportCategory.create(category: category7, report: report4, result: option20.name)

care_taker5 = User.create(email: "julia@gmailcom", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident5 = Resident.create(user_id: care_taker5.id, first_name: "margarida", last_name: "almeida", birth_date: "15/04/1963", clinical_info: "deaf", photography: "margarida.png")
report5 = Report.create(resident_id: resident5.id)
report_category3 = ReportCategory.create(category: category7, report: report5, result: option20.name)

puts "All done!"
