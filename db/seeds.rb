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
option5 = Option.create(name: "medium", category: category2)
option6 = Option.create(name: "bad", category: category2)

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

############

# Create the "Antonio" family member outside of the loop
# antonio = FamilyMember.create(
#   first_name: "Antonio",
#   last_name: "Quaresma",
#   phone_number: "966666666",
#   email: "tozequa@gmail.com",
#   address: "Rua da Alegria, 123",
#   # resident_id: resident.id,
#   relationship: "son",
#   photography: "residents/antonio.png"
# )

names = [
  "Pedro Agostinho",
  "Miguel Figueiredo",
  "Chiara Biasi",
  "Henrique Albuquerque",
  "Gabriel Fernandes",
  "Andre Marques",
  "André Pires",
  "Camila Henriquez",
  "David Carmo",
  "Filipa Merino",

  "Francisco Serralheiro",
  "Isabelle Ferrier",
  "Joao Sanches",
  "Magarida Toureiro",
  "Rita Laia",
  "Samuel Ven"
]

clinical_info = [
  "Hypertension",
  "Arthritis",
  "Diabetes",
  "Osteoporosis",
  "Alzheimer",
  "Asthma",
  "Allergies",
  "Deaf",
  "Heart Disease",
  "Blind",
  "Kidney Disease",
  "Parkinson's",
  "Healthy",
  "Arthritis",
  "Insomnia",
  "Migraine"
]

names.each_with_index do |full_name, i|
  first_name, last_name = full_name.split(" ")

  # Generate unique email and password for each iteration
  email = "user#{i + 1}@example.com"
  password = "password#{i + 1}"

  # Create a care taker user
  care_taker = User.create(
    email: email,
    password: password,
    first_name: "User",
    last_name: "#{i + 1}",
    role: "care taker"
  )

  # Create a resident associated with the care taker and the "Antonio" family member
  Resident.create(
    user_id: care_taker.id,
    first_name: first_name,
    last_name: last_name,
    birth_date: "01/01/19#{i + 80}",
    clinical_info: clinical_info[i],
    photography: "residents/#{first_name.downcase}.png"
  )

  # Associate the "Antonio" family member with the resident
  # resident.family_members << antonio
end

care_taker28 = User.create(email: "flavio16@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident1 = Resident.create(user_id: care_taker28.id, first_name: "Pedro", last_name: "Agostinho", birth_date: "15/04/1963", clinical_info: "Diabetes", photography: "residents/pedro.png")
family_member28 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident1.id, photography: "residents/antonio.png")

care_taker27 = User.create(email: "flavio15@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident2 = Resident.create(user_id: care_taker27.id, first_name: "Miguel", last_name: "Figueiredo", birth_date: "15/04/1963", clinical_info: "Ok?", photography: "residents/miguel.png")
family_member27 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident2.id, photography: "residents/antonio.png")

care_taker26 = User.create(email: "flavio14@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident3 = Resident.create(user_id: care_taker26.id, first_name: "Chiara", last_name: "Biasi", birth_date: "15/04/1963", clinical_info: "Migraine", photography: "residents/chiara.png")
family_member26 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident3.id, photography: "residents/antonio.png")

care_taker25 = User.create(email: "flavio13@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident4 = Resident.create(user_id: care_taker25.id, first_name: "Henrique", last_name: "Albuquerque", birth_date: "15/04/1963", clinical_info: "Hypertension", photography: "residents/henrique.png")
family_member25 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident4.id, photography: "residents/antonio.png")

care_taker24 = User.create(email: "flavio12@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident5 = Resident.create(user_id: care_taker24.id, first_name: "Gabriel", last_name: "Fernandes", birth_date: "15/04/1963", clinical_info: "Can't spell", photography: "residents/gabriel.png")
family_member24 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident5.id, photography: "residents/antonio.png")

care_taker23 = User.create(email: "flavio11@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident6 = Resident.create(user_id: care_taker23.id, first_name: "Andre", last_name: "Marques", birth_date: "15/04/1963", clinical_info: "Healthy", photography: "residents/andre.png")
family_member23 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident6.id, photography: "residents/antonio.png")

care_taker22 = User.create(email: "flavio10@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident7 = Resident.create(user_id: care_taker22.id, first_name: "Andre", last_name: "Pires", birth_date: "15/04/1963", clinical_info: "Deaf", photography: "residents/andré.png")
family_member22 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident7.id, photography: "residents/antonio.png")

care_taker21 = User.create(email: "flavio9@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident8 = Resident.create(user_id: care_taker21.id, first_name: "Camila", last_name: "Henriquez", birth_date: "15/04/1963", clinical_info: "Hypertension", photography: "residents/camila.png")
family_member21 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident8.id, photography: "residents/antonio.png")

care_taker20 = User.create(email: "flavio8@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident9 = Resident.create(user_id: care_taker20.id, first_name: "David", last_name: "Carmo", birth_date: "15/04/1963", clinical_info: "Osteoporosis", photography: "residents/david.png")
family_member20 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident9.id, photography: "residents/antonio.png")

care_taker19 = User.create(email: "flavio7@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident10 = Resident.create(user_id: care_taker19.id, first_name: "Filipa", last_name: "Merino", birth_date: "15/04/1963", clinical_info: "Alzheimer", photography: "residents/filipa.png")
family_member19 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident10.id, photography: "residents/antonio.png")

care_taker18 = User.create(email: "flavio6@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident11 = Resident.create(user_id: care_taker18.id, first_name: "Francisco", last_name: "Serralheiro", birth_date: "15/04/1963", clinical_info: "Kidney Disease", photography: "residents/francisco.png")
family_member18 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident11.id, photography: "residents/antonio.png")

care_taker17 = User.create(email: "flavio5@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident12 = Resident.create(user_id: care_taker17.id, first_name: "Isabelle", last_name: "Ferrier", birth_date: "15/04/1963", clinical_info: "Asthma", photography: "residents/isabelle.png")
family_member17 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident12.id, photography: "residents/antonio.png")

care_taker16 = User.create(email: "flavio4@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident13 = Resident.create(user_id: care_taker16.id, first_name: "Joao", last_name: "Sanches", birth_date: "15/04/1963", clinical_info: "Blind", photography: "residents/joao.png")
family_member16 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident13.id, photography: "residents/antonio.png")

care_taker15 = User.create(email: "flavio3@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident14 = Resident.create(user_id: care_taker15.id, first_name: "Magarida", last_name: "Toureiro", birth_date: "15/04/1963", clinical_info: "Arthritis", photography: "residents/magarida.png")
family_member15 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident14.id, photography: "residents/antonio.png")

care_taker14 = User.create(email: "flavio2@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident15 = Resident.create(user_id: care_taker14.id, first_name: "Rita", last_name: "Laia", birth_date: "15/04/1963", clinical_info: "Insomnia", photography: "residents/rita.png")
family_member14 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident15.id, photography: "residents/antonio.png")

care_taker13 = User.create(email: "flavio1@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident16 = Resident.create(user_id: care_taker13.id, first_name: "samuel", last_name: "ven", birth_date: "15/04/1963", clinical_info: "Insomnia", photography: "residents/samuel.png")
family_member13 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident16.id, photography: "residents/antonio.png")

care_taker1 = User.create(email: "flavio@gmail.com", password: "123456", first_name: "flavio", last_name: "mamede", role: "care taker")
resident17 = Resident.create(user_id: care_taker1.id, first_name: "nuno", last_name: "cassandra", birth_date: "15/04/1963", clinical_info: "Migraine", photography: "residents/nuno.png")
# report1 = Report.create(resident_id: resident17.id)
# report_category1 = ReportCategory.create(category: category4, report: report1, option: option10)
family_member1 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident17.id, photography: "residents/antonio.png")

care_taker2 = User.create(email: "ana@gmail.com", password: "123456", first_name: "ana", last_name: "almeida", role: "care taker")
resident18 = Resident.create(user_id: care_taker2.id, first_name: "armindo", last_name: "matias", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "residents/armindo.png")
# report2 = Report.create(resident_id: resident18.id)
# report_category2 = ReportCategory.create(category: category1, report: report2, option: option1)
family_member2 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident18.id, photography: "residents/antonio.png")

care_taker3 = User.create(email: "nuno@gmail.com", password: "123456", first_name: "flavio", last_name: "cassandro", role: "care taker")
resident19 = Resident.create(user_id: care_taker3.id, first_name: "luana", last_name: "pereira", birth_date: "15/04/1963", clinical_info: "allergies", photography: "residents/luana.png")
# report3 = Report.create(resident_id: resident3.id)
# report_category3 = ReportCategory.create(category: category5, report: report3, option: option16)
family_member3 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident19.id, photography: "residents/antonio.png")

care_taker4 = User.create(email: "rodrigo@gmail.com", password: "123456", first_name: "flavio", last_name: "coelho", role: "care taker")
resident20 = Resident.create(user_id: care_taker4.id, first_name: "antonio", last_name: "quaresma", birth_date: "15/04/1963", clinical_info: "blind", photography: "residents/antonio.png")
# report4 = Report.create(resident_id: resident20.id)
# report_category3 = ReportCategory.create(category: category7, report: report4, option: option20)
family_member4 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident20.id, photography: "residents/antonio.png")

care_taker5 = User.create(email: "julia@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident21 = Resident.create(user_id: care_taker5.id, first_name: "margarida", last_name: "almeida", birth_date: "15/04/1963", clinical_info: "deaf", photography: "residents/margarida.png")
# report5 = Report.create(resident_id: resident21.id)
# report_category3 = ReportCategory.create(category: category3, report: report5, option: option20)
family_member5 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident21.id, photography: "residents/antonio.png")

care_taker6 = User.create(email: "julia1@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident22 = Resident.create(user_id: care_taker6.id, first_name: "beatriz", last_name: "vieira", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "residents/beatriz.png")
# report6 = Report.create(resident_id: resident22.id)
# report_category4 = ReportCategory.create(category: category4, report: report6, option: option20)
family_member6 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident22.id, photography: "residents/antonio.png")


care_taker7 = User.create(email: "julia2@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident23 = Resident.create(user_id: care_taker7.id, first_name: "flavio", last_name: "mamede", birth_date: "15/04/1963", clinical_info: "allergies", photography: "residents/flavio.png")
# report7 = Report.create(resident_id: resident23.id)
# report_category5 = ReportCategory.create(category: category5, report: report7, option: option20)
family_member7 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident23.id, photography: "residents/antonio.png")


care_taker8 = User.create(email: "julia3@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident24 = Resident.create(user_id: care_taker8.id, first_name: "elidiane", last_name: "bezerra", birth_date: "15/04/1963", clinical_info: "back pain", photography: "residents/elidiane.png")
# report8 = Report.create(resident_id: resident24.id)
# report_category6 = ReportCategory.create(category: category6, report: report8, option: option20)
family_member8 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident24.id, photography: "residents/antonio.png")

care_taker9 = User.create(email: "julia4@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident25 = Resident.create(user_id: care_taker9.id, first_name: "kenneth", last_name: "stuen", birth_date: "15/04/1963", clinical_info: "deaf", photography: "residents/ken.png")
# report9 = Report.create(resident_id: resident25.id)
# report_category7 = ReportCategory.create(category: category7, report: report9, option: option20)
family_member9 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident25.id, photography: "residents/antonio.png")

care_taker10 = User.create(email: "julia5@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident26 = Resident.create(user_id: care_taker10.id, first_name: "maria", last_name: "azfal", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "residents/maria.png")
# report10 = Report.create(resident_id: resident26.id)
# report_category8 = ReportCategory.create(category: category7, report: report10, option: option20)
family_member10 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident26.id, photography: "residents/antonio.png")

care_taker11 = User.create(email: "julia6@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident27 = Resident.create(user_id: care_taker11.id, first_name: "rodrigo", last_name: "coelho", birth_date: "15/04/1963", clinical_info: "back pain", photography: "residents/rodrigo.png")
# report11 = Report.create(resident_id: resident27.id)
# report_category9 = ReportCategory.create(category: category4, report: report11, option: option20)
family_member11 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident27.id, photography: "residents/antonio.png")

care_taker12 = User.create(email: "julia7@gmail.com", password: "123456", first_name: "julia", last_name: "coelho", role: "care taker")
resident28 = Resident.create(user_id: care_taker12.id, first_name: "sofia", last_name: "correia", birth_date: "15/04/1963", clinical_info: "diabetes", photography: "residents/sofia.png")
# report12 = Report.create(resident_id: resident28.id)
# report_category10 = ReportCategory.create(category: category6, report: report12, option: option20)
family_member12 = FamilyMember.create(first_name: "antonio", last_name: "quaresma", phone_number: "966666666", email: "tozequa@gmail.com", address: "Rua da Alegria, 123", relationship: "son", resident_id: resident28.id, photography: "residents/antonio.png")

puts "All done!"
