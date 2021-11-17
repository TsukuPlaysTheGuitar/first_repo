# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    name: 'theking',
    password: 'kanri_nin',
    administrator: true
)

Qn.create(
    question: '迷っているんだったら、やったほうがいいよ。',
    answer: 'If you cannot decide, you should try it.',
    originality: 'yes'
)

Qn.create(
    question: "運転をするとその人の本性が出ると思う",
    answer: "How you drive a car reveals your character.",
    originality: "yes"
    )

Qn.create(
    question: "色々とありがとう",
    answer: "Thank you for everything.",
    originality: "yes"
    )

Qn.create(
    question: "彼は音楽のセンスがある",
    answer: "He has good taste in music.",
    originality: "yes"
    )

Qn.create(
    question: "この間ゲームを買ったんだけど、それがめちゃくちゃ面白いんだ。",
    answer: "I bought a video game software the other day, and it’s so much fun.",
    originality: "yes"
    )

Qn.create(
    question: "その映画にはマイナス評価が多いよ", 
    answer: "The movie has got a lot of negative evaluations.", 
    originality: "yes"
    )

Qn.create(
    question: "あなたはなんで日本に来たの?", 
    answer: "What brought you to Japan?", 
    originality: "yes"
    )

Qn.create(
    question: "その本はどんな内容なの?", 
    answer: "What is the book about?", 
    originality: "yes"
    )

Qn.create(
    question: "(質問などに対して)わからないなあ", 
    answer: "I'm not sure./ I have no idea.", 
    originality: "yes"
    )

Qn.create(
    question: "(皿などが)熱いので気をつけてください。", 
    answer: "Be carefull, it's very hot.", 
    originality: "yes"
    )

Qn.create(
    question: "帰り道にスポーツドリンクを買ってきてくれない?", 
    answer: "Can you get me some　sports drinks on your way home ?", 
    originality: "yes"
    )

    Qn.create(
        question: "日本のある地域の小学校では蛇口を捻るとオレンジジュースが出てくるらしい。", 
        answer: "I heard there is an elementary school in Japan where when you turn the faucet orange
        juice come out.", 
        originality: "yes"
        )
          