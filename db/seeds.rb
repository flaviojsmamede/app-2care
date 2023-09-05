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
FamilyMember.destroy_all
puts "Family members deleted!"
Resident.destroy_all
puts "Residents deleted!"
Report.destroy_all
puts "Reports deleted!"
User.destroy_all
puts "Users deleted!"

puts "Creating new DB..."

category1 = Category.create(name: "sleep", icon: '<i class="fa-solid fa-moon"></i>')

option1 = Option.create(name: "good", category: category1)
option2 = Option.create(name: "medium", category: category1)
option3 = Option.create(name: "bad", category: category1)

category2 = Category.create(name: "eat", icon: '<i class="fa-solid fa-utensils"></i>')

option4 = Option.create(name: "good", category: category2)
option5 =Option.create(name: "medium", category: category2)
option6 =Option.create(name: "bad", category: category2)

category3 = Category.create(name: "humour", icon: '<i class="fa-solid fa-masks-theater"></i>')

option7 = Option.create(name: "good", category: category3)
option8 = Option.create(name: "medium", category: category3)
option9 = Option.create(name: "bad", category: category3)

category4 = Category.create(name: "activities", icon: '<i class="fa-solid fa-person-running"></i>')

option10 = Option.create(name: "yoga", category: category4)
option11 = Option.create(name: "chess", category: category4)
option12 = Option.create(name: "walk", category: category4)

category5 = Category.create(name: "blood pressure", icon: '<i class="fa-solid fa-heart"></i>')

option14 = Option.create(name: "high", category: category5)
option15 = Option.create(name: "good", category: category5)
option16 = Option.create(name: "low", category: category5)

category6 = Category.create(name: "medication", icon: '<i class="fa-solid fa-pills"></i>')

option17 = Option.create(name: "all", category: category6)
option18 = Option.create(name: "partial", category: category6)
option19 = Option.create(name: "none", category: category6)

category7 = Category.create(name: "hygiene", icon: '<i class="fa-solid fa-shower"></i>')

option20 = Option.create(name: "good", category: category7)
option21 = Option.create(name: "medium", category: category7)
option22 = Option.create(name: "bad", category: category7)

puts "Categories created!"

care_taker1 = User.create(email: "flavio@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident1 = Resident.create(user_id: care_taker1.id, first_name: "nuno", last_name: "cassandra", birth_date: "15/04/1963", clinical_info: "Insomnia", photography: "nuno.png")
report1 = Report.create(resident_id: resident1.id)
report_category1 = ReportCategory.create(category: category4, report: report1, option: option10)
family_member1 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident1.id, photography: "antonio.png")

care_taker2 = User.create(email: "ana@gmail.com", password: "123456", first_name: "ana", last_name: "almeida", role: "care taker")
resident2 = Resident.create(user_id: care_taker2.id, first_name: "armindo", last_name: "matias", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "armindo.png")
report2 = Report.create(resident_id: resident2.id)
report_category2 = ReportCategory.create(category: category1, report: report2, option: option1)
family_member2 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident2.id, photography: "antonio.png")

care_taker3 = User.create(email: "nuno@gmail.com", password: "123456", first_name: "flavio", last_name: "cassandro", role: "care taker")
resident3 = Resident.create(user_id: care_taker3.id, first_name: "luana", last_name: "pereira", birth_date: "15/04/1963", clinical_info: "allergies", photography: "luana.png")
report3 = Report.create(resident_id: resident3.id)
report_category3 = ReportCategory.create(category: category5, report: report3, option: option16)
family_member3 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident3.id, photography: "antonio.png")

care_taker4 = User.create(email: "rodrigo@gmail.com", password: "123456", first_name: "flavio", last_name: "coelho", role: "care taker")
resident4 = Resident.create(user_id: care_taker4.id, first_name: "antonio", last_name: "quaresma", birth_date: "15/04/1963", clinical_info: "blind", photography: "antonio.png")
report4 = Report.create(resident_id: resident4.id)
report_category3 = ReportCategory.create(category: category7, report: report4, option: option20)
family_member4 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident4.id, photography: "antonio.png")

care_taker5 = User.create(email: "julia@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident5 = Resident.create(user_id: care_taker5.id, first_name: "margarida", last_name: "almeida", birth_date: "15/04/1963", clinical_info: "deaf", photography: "margarida.png")
report5 = Report.create(resident_id: resident5.id)
report_category3 = ReportCategory.create(category: category3, report: report5, option: option20)
family_member5 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident5.id, photography: "antonio.png")

care_taker6 = User.create(email: "julia1@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident6 = Resident.create(user_id: care_taker6.id, first_name: "beatriz", last_name: "vieira", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "beatriz.png")
report6 = Report.create(resident_id: resident6.id)
report_category4 = ReportCategory.create(category: category4, report: report6, option: option20)
family_member6 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident6.id, photography: "antonio.png")


care_taker7 = User.create(email: "julia2@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident7 = Resident.create(user_id: care_taker7.id, first_name: "flavio", last_name: "mamede", birth_date: "15/04/1963", clinical_info: "allergies", photography: "flavio.png")
report7 = Report.create(resident_id: resident7.id)
report_category5 = ReportCategory.create(category: category5, report: report7, option: option20)
family_member7 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident7.id, photography: "antonio.png")


care_taker8 = User.create(email: "julia3@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident8 = Resident.create(user_id: care_taker8.id, first_name: "elidiane", last_name: "bezerra", birth_date: "15/04/1963", clinical_info: "back pain", photography: "elidiane.png")
report8 = Report.create(resident_id: resident8.id)
report_category6 = ReportCategory.create(category: category6, report: report8, option: option20)
family_member8 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident8.id, photography: "antonio.png")

care_taker9 = User.create(email: "julia4@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident9 = Resident.create(user_id: care_taker9.id, first_name: "kenneth", last_name: "stuen", birth_date: "15/04/1963", clinical_info: "deaf", photography: "ken.png")
report9 = Report.create(resident_id: resident9.id)
report_category7 = ReportCategory.create(category: category7, report: report9, option: option20)
family_member9 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident19id, photography: "antonio.png")

care_taker10 = User.create(email: "julia5@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident10 = Resident.create(user_id: care_taker10.id, first_name: "maria", last_name: "azfal", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "maria.png")
report10 = Report.create(resident_id: resident10.id)
report_category8 = ReportCategory.create(category: category7, report: report10, option: option20)
family_member10 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident10.id, photography: "antonio.png")

care_taker11 = User.create(email: "julia6@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident11 = Resident.create(user_id: care_taker11.id, first_name: "rodrigo", last_name: "coelho", birth_date: "15/04/1963", clinical_info: "back pain", photography: "rodrigo.png")
report11 = Report.create(resident_id: resident11.id)
report_category9 = ReportCategory.create(category: category4, report: report11, option: option20)
family_member11 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident11.id, photography: "antonio.png")

care_taker12 = User.create(email: "julia7@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident12 = Resident.create(user_id: care_taker12.id, first_name: "sofia", last_name: "correia", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "sofia.png")
report12 = Report.create(resident_id: resident12.id)
report_category10 = ReportCategory.create(category: category6, report: report12, option: option20)
family_member12 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident12.id, photography: "antonio.png")


puts "All done!"
