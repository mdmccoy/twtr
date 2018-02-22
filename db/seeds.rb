# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(name: 'Bif Grady', bio: 'Test', picture: 'https://www.placecage.com/c/400/400', small_picture: 'https://www.placecage.com/75/75')
10.times do
  Comment.create(body: 'Cool dude!', user: u)
end

u2 = User.create(name: 'Dr. Emmett Brown', bio: 'I once wrote a book about science fiction.', picture: 'http://vignette2.wikia.nocookie.net/epicrapbattlesofhistory/images/b/b5/Doc_Brown_Based_On.png/revision/latest?cb=20150823032635', small_picture: 'https://ct.yimg.com/cy/4575/37424502783_372884_128sq.jpg')
10.times do
  Comment.create(body: 'Super stuff!', user: u2)
end

u3 = User.create(name: 'Random Person', bio: 'I like turtles', picture: 'http://fillmurray.com/g/200/300', small_picture: 'https://www.fillmurray.com/75/75')
u4 = User.create(name: 'Random Person', bio: 'I like turtles', picture: 'http://fillmurray.com/g/200/300', small_picture: 'https://www.fillmurray.com/75/75')
u5 = User.create(name: 'Random Person', bio: 'I like turtles', picture: 'http://fillmurray.com/g/300/300', small_picture: 'https://www.fillmurray.com/75/75')
u.followers << u3
u.followers << u4
u.followers << u5
u6 = User.create(name: 'Random Person', bio: 'I like turtles', picture: 'http://fillmurray.com/g/150/150', small_picture: 'https://www.fillmurray.com/75/75')
u7 = User.create(name: 'Random Person', bio: 'I like turtles', picture: 'http://fillmurray.com/g/200/200', small_picture: 'https://www.fillmurray.com/75/75')
u8 = User.create(name: 'Random Person', bio: 'I like turtles', picture: 'http://fillmurray.com/g/300/300', small_picture: 'https://www.fillmurray.com/75/75')
u9 = User.create(name: 'Random Person', bio: 'I like turtles', picture: 'http://fillmurray.com/g/200/200', small_picture: 'https://www.fillmurray.com/75/75')
u2.followers << u6
u2.followers << u7
u2.followers << u8
u2.followers << u9
puts 'Congratulations! It worked... probably.'
puts "#{User.count} users created."
puts "#{Comment.count} comments created."
