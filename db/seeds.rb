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

alex = User.create(username: 'thedesertfox2', password: 'password', name: 'Alexander Gautherin', dob: '08/11/1994', has_permit: false, has_license: false)

dmv1 = DmvPaperwork.create(name: 'CS-1', url: 'https://portal.ct.gov/DMV/Licenses/Licenses/Driving-Schools---Driver-Education-Certificate')
dmv2 = DmvPaperwork.create(name: 'Car Insurance Card', url: 'https://i2.wp.com/www.safecar.info/wp-content/uploads/2019/08/free-auto-insurance-card-template.jpg?fit=1196%2C720&ssl=1')

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



