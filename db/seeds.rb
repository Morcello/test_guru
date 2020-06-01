# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([
  { username: 'Admin', password: 'admin' },
  { username: 'luciy', password: 'light' }
])

categories = Category.create!([
  { title: 'Лучший актер' },
  { title: 'Лучший фильм' },
  { title: 'Лучший режесер' }
])

tests = Test.create!([
  { title: 'Актерское мастерство', level: 1, category_id: categories[0].id },
  { title: 'Сценарий', level: 1, category_id: categories[0].id },
  { title: 'Замысел', level: 2, category_id: categories[1].id },
  { title: 'Сюжет', level: 3, category_id: categories[2].id }
])

passed_tests = PassedTest.create!([
    { passed: true, user_id: users[0].id, test_id: tests[0].id },
    { passed: true, user_id: users[0].id, test_id: tests[3].id }
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
