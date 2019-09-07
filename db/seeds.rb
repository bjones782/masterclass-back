# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
# require 'pry'

# Student.destroy_all

# response = RestClient::Request.execute(
#     method: :get,
#     url: 'https://api.commonstandardsproject.com/api/v1/standard_sets/49FCDFBD2CF04033A9C347BFA0584DF0_D2604890_grade-04',
#     headers: {'Api-Key': 'QjLwLDf7xv7DhAT8Eed94Mg1'}
# )
# Lesson.delete_all
# Student.delete_all
# Comment.delete_all


response = RestClient.get('https://api.commonstandardsproject.com/api/v1/standard_sets/49FCDFBD2CF04033A9C347BFA0584DF0_D2604890_grade-04', headers={api_key: 'QjLwLDf7xv7DhAT8Eed94Mg1'})

parsed = JSON.parse(response)

stds = parsed["data"].fetch('standards')

one = stds.fetch('3CC303352E9A4A47975FDE7B0B66E5E2')
two = stds.fetch('6793E633D5924B349204B5A7AA512DF7')
three = stds.fetch('76E2B8B25F1B4ABAA5909732E579BBDB')

# description1 = one.fetch('description')
# notation1 = one.fetch('statementNotation')

description1 = parsed["data"]["standards"]["3CC303352E9A4A47975FDE7B0B66E5E2"]["description"]
notation1 = parsed["data"]["standards"]["3CC303352E9A4A47975FDE7B0B66E5E2"]["statementNotation"]

description2 = parsed["data"]["standards"]["5A0F4D5A6BB3424AAC0CE9D51AFA3E06"]["description"]
notation2 = parsed["data"]["standards"]["5A0F4D5A6BB3424AAC0CE9D51AFA3E06"]["statementNotation"]

description3 = parsed["data"]["standards"]["76E2B8B25F1B4ABAA5909732E579BBDB"]["description"]
notation3 = parsed["data"]["standards"]["76E2B8B25F1B4ABAA5909732E579BBDB"]["statementNotation"]


# description2 = two.fetch('description')
# notation2 = two.fetch('statementNotation')

# description3 = three.fetch('description')
# notation3 = three.fetch('statementNotation')



nfc7 = Standard.create(description: description1, notation: notation1, masterylevel: 1)
mp8 = Standard.create(description: description2, notation: notation2, masterylevel: 1)
mp7 = Standard.create(description: description3, notation: notation3, masterylevel: 1)


Comment.create(content: "my first comment", student_id: 1)



Student.create(name: "Jenny", user_id: 1)
Student.create(name: "Rex", user_id: 1)
Student.create(name: "Tanya", user_id: 1)
Student.create(name: "Robert", user_id: 1)
Student.create(name: "Kingston", user_id: 1)
Student.create(name: "Ayana", user_id: 1)
Student.create(name: "Marlecia", user_id: 1)
Student.create(name: "Reina", user_id: 1)
Student.create(name: "Tee", user_id: 1)
Student.create(name: "Zach", user_id: 1)
Student.create(name: "Conrad", user_id: 1)
Student.create(name: "Jourdan", user_id: 1)
Student.create(name: "Alex", user_id: 1)
Student.create(name: "Maryam", user_id: 1)
Student.create(name: "Brit", user_id: 1)
Student.create(name: "Will", user_id: 1)
Student.create(name: "Kaeland", user_id: 1)
Student.create(name: "Tammy", user_id: 1)
Student.create(name: "Dylan", user_id: 1)
Student.create(name: "Brad", user_id: 1)

Lesson.create(student_id: 1, standard_id: 1, mastery: 1)
Lesson.create(student_id: 1, standard_id: 1, mastery: 2)
Lesson.create(student_id: 1, standard_id: 1, mastery: 3)