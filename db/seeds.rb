# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([
  { first_name: 'Neyron', password: 'password', email: 'brillertv1@gmail.com' },
  { first_name: 'luciy', password: 'password', email: 'brillertv2@gmail.com' }
])

  admins = Admin.create([
    { first_name: 'Tim', last_name: 'Pavlov', email: 'brillertv@gmail.com', password: 'lot123456', type: 'Admin' }
  ])

categories = Category.create!([
  { title: 'Лучший актер' },
  { title: 'Лучший фильм' },
  { title: 'Лучший режесер' }
])

tests = Test.create!([
  { title: 'Актерское мастерство', level: 1, category: categories[0], author: users[0] },
  { title: 'Сценарий', level: 1, category: categories[0], author: users[0] },
  { title: 'Замысел', level: 2, category: categories[1], author: users[0] },
  { title: 'Сюжет', level: 3, category: categories[2], author: users[0] }
])

passed_tests = PassedTest.create!([
  { passed: true, user: users[0], test: tests[0] },
  { passed: true, user: users[0], test: tests[1] },
  { passed: true, user: users[0], test: tests[3] }
])

questions = Question.create!([
  {
    body: 'Самая пристижная награда в США?',
    test_id: tests[0].id
  },
  {
    body: 'Самая пристижная награда в России?',
    test_id: tests[1].id
  }
])

answers = Answer.create!([
  {
    body: 'Оскар',
    correct: true,
    question_id: questions[0].id
  },
  {
    body: 'Теффи',
    correct: true,
    question_id: questions[1].id
  }
])
