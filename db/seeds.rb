# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'theking',
            password: 'kanri_nin',
            administrator: true)

Qn.create!(question: '迷っているんだったら、やったほうがいいよ。',
          answer: 'If you cannot decide, you shoud try it.',
          originality: 'yes')

Qn.create!(question: "運転をするとその人の本性が出ると思う",
          answer: "How you drive a car reveals your character.",
          originality: "yes")

Qn.create!(question: "色々とありがとう",
          answer: "Thank you for everything.",
          originality: "yes")

Qn.create!(question: "彼は音楽のセンスがある",
          answer: "He has good taste in music.",
          originality: "yes")

Qn.create!(question: "この間ゲームを買ったんだけど、それがめちゃくちゃ面白いんだ。",
          answer: "I bought a video game software the other day, and it’s so much fun.",
          originality: "yes")

#Qn.create(question: "",answer: "",originality: "yes")
          