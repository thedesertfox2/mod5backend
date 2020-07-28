# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
DmvPaperwork.destroy_all
UserDmvPaperwork.destroy_all
Test.destroy_all
Parking.destroy_all

alex = User.create(username: 'thedesertfox2', password: 'password', name: 'Alexander Gautherin', dob: '08/11/1994', has_permit: false, has_license: false)

DmvPaperwork.create(name: 'Birth Certificate OR Passport', description: "Must be original. Cannot be laminated!")
DmvPaperwork.create(name: 'Social Security Card', description: "Must be original. Cannot be laminated!")
DmvPaperwork.create(name: 'Piece of Mail 1')
DmvPaperwork.create(name: 'Piece of Mail 2')
DmvPaperwork.create(name: 'Vision Test', description: "Glasses/Contact Lenses OR I don't need vision correction.")
DmvPaperwork.create(name: '$40 Test Fee', description: "Cash/Check/Visa/Mastercard")
DmvPaperwork.create(name: "$19 Fee for Learner's Permit", description: "Cash/Check/Visa/Mastercard")
DmvPaperwork.create(name: 'Notarized and signed parental consent form', description: "Must be original copy.")

Parking.create(name: 'Pull-In Parking on the Left', url: 'https://www.youtube.com/watch?v=uG0haUpAEX4')
Parking.create(name: 'Pull-In Parking on the Right', url: 'https://www.youtube.com/watch?v=aUhqSXGsIS4')
Parking.create(name: 'Back-In Parking on the Right', url: 'https://www.youtube.com/watch?v=iPCNT9o7y5I')
Parking.create(name: 'Back-In Parking on the Left', url: 'https://www.youtube.com/watch?v=pCzcuWfTo7w')
Parking.create(name: 'Parallel Parking', url: 'https://www.youtube.com/watch?v=UQCSA1rTKvY')
Parking.create(name: 'Three-Point Turns', url: 'https://www.youtube.com/watch?v=fwgC27ExMgU')

# udp1 = UserDmvPaperwork.create(user_id: alex.id, dmv_paperwork_id: dmv1.id)

# scrape = Scraper.new

# scrape.scrape_trivia_questions.each do |k, v|
#     i = 0
#     question = v['question']
#     var = Question.create(question: question)
#     while v['choices'].length > i do 
#         var2 = v['choices'][i]
#         Choice.create(question_id: var.id, choice_text: var2, iscorrect: false)
#         i += 1
#     end
# end



