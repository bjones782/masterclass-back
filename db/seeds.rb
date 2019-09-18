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
# Standard.delete_all


response = RestClient.get('https://api.commonstandardsproject.com/api/v1/standard_sets/49FCDFBD2CF04033A9C347BFA0584DF0_D2604890_grade-04', headers={api_key: 'QjLwLDf7xv7DhAT8Eed94Mg1'})

parsed = JSON.parse(response)

stds = parsed["data"].fetch('standards')

one = stds.fetch('3CC303352E9A4A47975FDE7B0B66E5E2')
two = stds.fetch('6793E633D5924B349204B5A7AA512DF7')
three = stds.fetch('76E2B8B25F1B4ABAA5909732E579BBDB')
four = stds.fetch('5F2813016AF946DDAC110B22D6691596')

# description1 = one.fetch('description')
# notation1 = one.fetch('statementNotation')

descriptionnfc7 = parsed["data"]["standards"]["3CC303352E9A4A47975FDE7B0B66E5E2"]["description"]
notationnfc7 = parsed["data"]["standards"]["3CC303352E9A4A47975FDE7B0B66E5E2"]["statementNotation"]

descriptionmp8 = parsed["data"]["standards"]["5A0F4D5A6BB3424AAC0CE9D51AFA3E06"]["description"]
notationmp8 = parsed["data"]["standards"]["5A0F4D5A6BB3424AAC0CE9D51AFA3E06"]["statementNotation"]

descriptionmp7 = parsed["data"]["standards"]["76E2B8B25F1B4ABAA5909732E579BBDB"]["description"]
notationmp7 = parsed["data"]["standards"]["76E2B8B25F1B4ABAA5909732E579BBDB"]["statementNotation"]

descriptionOA1 = parsed["data"]["standards"]["5F2813016AF946DDAC110B22D6691596"]["description"]
notationOA1 = parsed["data"]["standards"]["5F2813016AF946DDAC110B22D6691596"]["statementNotation"]

descriptionOA2 = parsed["data"]["standards"]["6522F8B71A1C43F4A8208512821E492D"]["description"]
notationOA2 = parsed["data"]["standards"]["6522F8B71A1C43F4A8208512821E492D"]["statementNotation"]

descriptionOA3 = parsed["data"]["standards"]["0226A284C4CA4AF19A3CA6837C59A7C3"]["description"]
notationOA3 = parsed["data"]["standards"]["0226A284C4CA4AF19A3CA6837C59A7C3"]["statementNotation"]

descriptionOAB = parsed["data"]["standards"]["8C0809F8015442E6B270C5C01446BB92"]["description"]
notationOAB = parsed["data"]["standards"]["8C0809F8015442E6B270C5C01446BB92"]["statementNotation"]

descriptionOAC = parsed["data"]["standards"]["B66215912F9842199F7ADA148DE0BA96"]["description"]
notationOAC = parsed["data"]["standards"]["B66215912F9842199F7ADA148DE0BA96"]["statementNotation"]

descriptionNBT1 = parsed["data"]["standards"]["D3AEC90DF6704C70AB7BD0869B625295"]["description"]
notationNBT1 = parsed["data"]["standards"]["D3AEC90DF6704C70AB7BD0869B625295"]["statementNotation"]

descriptionNBT2 = parsed["data"]["standards"]["311B7CDC83CE410D9156AD8233D5AFFB"]["description"]
notationNBT2 = parsed["data"]["standards"]["311B7CDC83CE410D9156AD8233D5AFFB"]["statementNotation"]

descriptionNBT3 = parsed["data"]["standards"]["AA0072D0E4E14490AF9FD975A311CCCC"]["description"]
notationNBT3 = parsed["data"]["standards"]["AA0072D0E4E14490AF9FD975A311CCCC"]["statementNotation"]

descriptionNBTB4 = parsed["data"]["standards"]["C946668877D74D73A65BF933BE70E608"]["description"]
notationNBTB4 = parsed["data"]["standards"]["C946668877D74D73A65BF933BE70E608"]["statementNotation"]

descriptionNBTC5 = parsed["data"]["standards"]["C4C0FABE976547DC9A2962FA62A4A8B8"]["description"]
notationNBTC5 = parsed["data"]["standards"]["C4C0FABE976547DC9A2962FA62A4A8B8"]["statementNotation"]

descriptionNF1 = parsed["data"]["standards"]["843A2F9799924C0E9101C6A5E893EA5D"]["description"]
notationNF1 = parsed["data"]["standards"]["843A2F9799924C0E9101C6A5E893EA5D"]["statementNotation"]

descriptionNF2 = parsed["data"]["standards"]["25F0492AB4794A918138BCE56DCCBD56"]["description"]
notationNF2 = parsed["data"]["standards"]["25F0492AB4794A918138BCE56DCCBD56"]["statementNotation"]

descriptionNFB3 = parsed["data"]["standards"]["3D573E190CB84FD78CE7DD5572BF6317"]["description"]
notationNFB3 = parsed["data"]["standards"]["3D573E190CB84FD78CE7DD5572BF6317"]["statementNotation"]

descriptionNFB4 = parsed["data"]["standards"]["99016FAB34DE4151BE35152521D5363F"]["description"]
notationNFB4 = parsed["data"]["standards"]["99016FAB34DE4151BE35152521D5363F"]["statementNotation"]

descriptionNFC5 = parsed["data"]["standards"]["112448D6FF54442B84E9AB0408D4187F"]["description"]
notationNFC5 = parsed["data"]["standards"]["112448D6FF54442B84E9AB0408D4187F"]["statementNotation"]

descriptionMD1 = parsed["data"]["standards"]["05F50FF1237345D89B89FD6FC69DECC3"]["description"]
notationMD1 = parsed["data"]["standards"]["05F50FF1237345D89B89FD6FC69DECC3"]["statementNotation"]

descriptionMD2 = parsed["data"]["standards"]["478FBDADFE9648DBB86E2283BCEAE7FD"]["description"]
notationMD2 = parsed["data"]["standards"]["478FBDADFE9648DBB86E2283BCEAE7FD"]["statementNotation"]

descriptionMD3 = parsed["data"]["standards"]["D8A43F0D49DC43558105A565B3350C06"]["description"]
notationMD3 = parsed["data"]["standards"]["D8A43F0D49DC43558105A565B3350C06"]["statementNotation"]

descriptionMDB4 = parsed["data"]["standards"]["D6435267298F480A925E104C9FC424D7"]["description"]
notationMDB4 = parsed["data"]["standards"]["D6435267298F480A925E104C9FC424D7"]["statementNotation"]

descriptionMDC5 = parsed["data"]["standards"]["445516A6991E481988BA2CCFDD5896CA"]["description"]
notationMDC5 = parsed["data"]["standards"]["445516A6991E481988BA2CCFDD5896CA"]["statementNotation"]

descriptionG1 = parsed["data"]["standards"]["FB599E1A14C54DF7B46676A12A410948"]["description"]
notationG1 = parsed["data"]["standards"]["FB599E1A14C54DF7B46676A12A410948"]["statementNotation"]

descriptionG2 = parsed["data"]["standards"]["48C279B61CBD40A4AB37113FAD7C9D1E"]["description"]
notationG2 = parsed["data"]["standards"]["48C279B61CBD40A4AB37113FAD7C9D1E"]["statementNotation"]

descriptionG3 = parsed["data"]["standards"]["677C0B8FB5D8414E9465E961E98990BD"]["description"]
notationG3 = parsed["data"]["standards"]["677C0B8FB5D8414E9465E961E98990BD"]["statementNotation"]

# description2 = two.fetch('description')
# notation2 = two.fetch('statementNotation')

# description3 = three.fetch('description')
# notation3 = three.fetch('statementNotation')

oa1 = Standard.create(description: descriptionOA1, notation: notationOA1, masterylevel: 1 )
oa2 = Standard.create(description: descriptionOA2, notation: notationOA2, masterylevel: 1 )
oa3 = Standard.create(description: descriptionOA3, notation: notationOA3, masterylevel: 1 )
oab = Standard.create(description: descriptionOAB, notation: notationOAB, masterylevel: 1 )
oac = Standard.create(description: descriptionOAC, notation: notationOAC, masterylevel: 1 )

nbt1 = Standard.create(description: descriptionNBT1, notation: notationNBT1, masterylevel: 1 )
nbt2 = Standard.create(description: descriptionNBT2, notation: notationNBT2, masterylevel: 1 )
nbt3 = Standard.create(description: descriptionNBT3, notation: notationNBT3, masterylevel: 1 )
nbtb4 = Standard.create(description: descriptionNBTB4, notation: notationNBTB4, masterylevel: 1 )
nbtc5 = Standard.create(description: descriptionNBTC5, notation: notationNBTC5, masterylevel: 1 )

nf1 = Standard.create(description: descriptionNF1, notation: notationNF1, masterylevel: 1 )
nf2 = Standard.create(description: descriptionNF2, notation: notationNF2, masterylevel: 1 )
nfb3 = Standard.create(description: descriptionNFB3, notation: notationNFB3, masterylevel: 1 )
nfb4 = Standard.create(description: descriptionNFB4, notation: notationNFB4, masterylevel: 1 )
nfc5 = Standard.create(description: descriptionNFC5, notation: notationNFC5, masterylevel: 1 )

md1 = Standard.create(description: descriptionMD1, notation: notationMD1, masterylevel: 1 )
md2 = Standard.create(description: descriptionMD2, notation: notationMD2, masterylevel: 1 )
md3 = Standard.create(description: descriptionMD3, notation: notationMD3, masterylevel: 1 )
mdb4 = Standard.create(description: descriptionMDB4, notation: notationMDB4, masterylevel: 1 )
mdc5 = Standard.create(description: descriptionMDC5, notation: notationMDC5, masterylevel: 1 )

g1 = Standard.create(description: descriptionG1, notation: notationG1, masterylevel: 1 )
g2 = Standard.create(description: descriptionG2, notation: notationG2, masterylevel: 1 )
g3 = Standard.create(description: descriptionG3, notation: notationG3, masterylevel: 1 )


Student.create(name: "Jenny", user_id: 1)
Student.create(name: "Rex", user_id: 1)
Student.create(name: "Tanya", user_id: 1)
Student.create(name: "Robert", user_id: 1)
Student.create(name: "King", user_id: 1)
Student.create(name: "Ayana", user_id: 1)
Student.create(name: "Lauren", user_id: 1)
Student.create(name: "Reina", user_id: 1)
Student.create(name: "Tee", user_id: 1)
Student.create(name: "Zach", user_id: 1)
Student.create(name: "Conrad", user_id: 1)
Student.create(name: "Colin", user_id: 1)
Student.create(name: "Alex", user_id: 1)
Student.create(name: "Maryam", user_id: 1)
Student.create(name: "Brit", user_id: 1)
Student.create(name: "Will", user_id: 1)
Student.create(name: "Taylor", user_id: 1)
Student.create(name: "Tammy", user_id: 1)
Student.create(name: "Dylan", user_id: 1)
Student.create(name: "Brad", user_id: 1)

# Lesson.create(student_id: 1, standard_id: 1, mastery: 1)
# Lesson.create(student_id: 1, standard_id: 1, mastery: 2)
# Lesson.create(student_id: 1, standard_id: 1, mastery: 3)