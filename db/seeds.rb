# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {
    id: 1,
    name: 'Alex',
    email: 'alex@movies.com'
  },
  {
    id: 2,
    name: 'Amanda',
    email: 'amanda@movies.com'
  },
  {
    id: 3,
    name: 'Angela',
    email: 'angela@movies.com'
  },
  {
    id: 4,
    name: 'Beth',
    email: 'beth@movies.com'
  },
  {
    id: 5,
    name: 'Brian',
    email: 'brian@movies.com'
  },
  {
    id: 6,
    name: 'Eric',
    email: 'eric@movies.com'
  },
  {
    id: 7,
    name: 'Jon',
    email: 'jon@movies.com'
  },
  {
    id: 8,
    name: 'Journey',
    email: 'journey@movies.com'
  },
  {
    id: 9,
    name: 'Leah',
    email: 'leah@movies.com'
  },
  {
    id: 10,
    name: 'Nate',
    email: 'nate@movies.com'
  },
  {
    id: 11,
    name: 'Orion',
    email: 'orion@movies.com'
  },
  {
    id: 12,
    name: 'Rochelle',
    email: 'rochelle@movies.com'
  },
  {
    id: 13,
    name: 'Sarah',
    email: 'sarah@movies.com'
  },
  {
    id: 14,
    name: 'Wes',
    email: 'wes@movies.com'
  },
  {
    id: 15,
    name: 'Sean',
    email: 'sean@movies.com'
  },
  {
    id: 16,
    name: 'Shawn',
    email: 'shawn@movies.com'
  },
  {
    id: 17,
    name: 'Rachel',
    email: 'rachel@movies.com'
  },
  {
    id: 18,
    name: 'Broc',
    email: 'broc@movies.com'
  },
  {
    id: 19,
    name: 'Hannah',
    email: 'hannah@movies.com'
  },
  {
    id: 20,
    name: 'Mike',
    email: 'mike@movies.com'
  }
])

Tag.create([
  {
    name: 'Horror',
    slug: 'horror'
  },
  {
    name: 'Slow Burn',
    slug: 'slow-burn'
  },
  {
    name: 'Japanese',
    slug: 'japanese'
  },
  {
    name: 'Overhyped',
    slug: 'overhyped'
  },
  {
    name: 'Western',
    slug: 'western'
  },
  {
    name: 'Dance',
    slug: 'dance'
  },
  {
    name: 'Strange',
    slug: 'strange'
  },
  {
    name: 'Intense',
    slug: 'intense'
  },
  {
    name: 'Erotic',
    slug: 'erotic'
  },
  {
    name: '42 minute long continuous climax',
    slug: '42-minute-long-continuous-climax'
  },
  {
    name: 'Heartfelt',
    slug: 'heartfelt'
  },
  {
    name: 'Comedy',
    slug: 'comedy'
  },
  {
    name: 'Thriller',
    slug: 'thriller'
  },
  {
    name: 'Easy',
    slug: 'easy'
  },
  {
    name: 'Cute',
    slug: 'cute'
  },
  {
    name: 'Fun',
    slug: 'fun'
  },
  {
    name: 'Ernest',
    slug: 'ernest'
  },
  {
    name: 'Slasher',
    slug: 'slasher'
  },
  {
    name: 'Slasher Comedy',
    slug: 'slasher-comedy'
  },
  {
    name: 'Body Switch',
    slug: 'body-switch'
  },
  {
    name: 'Horror Comedy',
    slug: 'horror-comedy'
  },
  {
    name: 'Supernatural',
    slug: 'supernatural'
  },
  {
    name: 'Nicholas Cage',
    slug: 'nicholas-cage'
  },
  {
    name: 'Silly',
    slug: 'silly'
  },
  {
    name: 'Action',
    slug: 'action'
  },
  {
    name: 'Eerie',
    slug: 'eerie'
  },
  {
    name: 'Classic',
    slug: 'classic'
  },
  {
    name: 'Vampy',
    slug: 'vampy'
  },
  {
    name: 'Shit-yo-pants',
    slug: 'shit-yo-pants'
  },
  {
    name: 'Anime',
    slug: 'anime'
  },
  {
    name: 'Creepy',
    slug: 'creepy'
  },
  {
    name: 'Cheeky',
    slug: 'cheeky'
  },
  {
    name: 'Jumpscare',
    slug: 'jumpscare'
  },
  {
    name: 'Gore',
    slug: 'gore'
  },
  {
    name: 'Repetitive',
    slug: 'repetitive'
  },
  {
    name: 'Mystery',
    slug: 'mystery'
  },
  {
    name: 'Spooped My Pants',
    slug: 'spooped-my-pants'
  },
  {
    name: 'Drama',
    slug: 'drama'
  },
  {
    name: 'Unnerving',
    slug: 'unnerving'
  },
  {
    name: 'Atmospheric',
    slug: 'atmospheric'
  },
  {
    name: 'Sexy',
    slug: 'sexy'
  },
  {
    name: 'Awkward',
    slug: 'awkward'
  },
  {
    name: 'Campy',
    slug: 'campy'
  },
  {
    name: 'Angelica Houston',
    slug: 'angelica-houston'
  },
  {
    name: 'Must See',
    slug: 'must-see'
  },
  {
    name: 'Style Over Substance',
    slug: 'style-over-substance'
  },
  {
    name: 'Gothic Romance',
    slug: 'gothic-romance'
  },
  {
    name: 'Funny',
    slug: 'funny'
  },
  {
    name: 'Noice',
    slug: 'noice'
  },
  {
    name: 'Kurt Russell and Jack from LOST',
    slug: 'kurt-russell-and-jack-from-lost'
  },
  {
    name: 'Yee-haw',
    slug: 'yee-haw'
  },
])

Recommendation.create([
  {
    title: "Audition",
    medium: 'movie',
    recommended_by_id: 8
  },
  {
    title: "Babadook",
    medium: 'movie',
    recommended_by_id: 4
  },
  {
    title: "Bone Tomahawk",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "Brooklyn 99 Halloween eps",
    medium: 'tv',
    recommended_by_id: 6
  },
  {
    title: "Climax",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "Coco",
    medium: 'movie',
    recommended_by_id: 11
  },
  {
    title: "Come to Daddy",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "Costume Quest",
    medium: 'tv',
    recommended_by_id: 8
  },
  {
    title: "Crazyhead",
    medium: 'tv',
    recommended_by_id: 8
  },
  {
    title: "Crimson Peak",
    medium: 'movie',
    recommended_by_id: 8
  },
  {
    title: "Dead Man's Bones",
    medium: 'album',
    recommended_by_id: 6
  },
  {
    title: "Ernest Scared Stupid",
    medium: 'transcendental experience'
  },
  {
    title: "Freaky",
    medium: 'movie',
    recommended_by_id: 8
  },
  {
    title: "Get Out",
    medium: 'movie',
    recommended_by_id: 11
  },
  {
    title: "Hereditary",
    medium: 'movie',
    recommended_by_id: 9
  },
  {
    title: "House on Haunted Hill (1959)",
    medium: 'movie',
    recommended_by_id: 9
  },
  {
    title: "Mandy",
    medium: 'movie',
    recommended_by_id: 1
  },
  {
    title: "Midsommar",
    medium: 'film',
    recommended_by_id: 1
  },
  {
    title: "Mononoke",
    medium: 'tv',
    recommended_by_id: 8
  },
  {
    title: "Mushi-shi ",
    medium: 'tv',
    recommended_by_id: 8
  },
  {
    title: "Neon Demon",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "Nosferatu (1922)",
    medium: 'movie',
    recommended_by_id: 8
  },
  {
    title: "Outlast",
    medium: 'video game',
    recommended_by_id: 6
  },
  {
    title: "Over the Garden Wall",
    medium: 'miniseries',
    recommended_by_id: 6
  },
  {
    title: "Paranorman",
    medium: 'movie',
    recommended_by_id: 8
  },
  {
    title: "Perfect Blue",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "PG: Psycho Goreman",
    medium: 'film',
    recommended_by_id: 1
  },
  {
    title: "Practical Magic",
    medium: 'movie',
    recommended_by_id: 8
  },
  {
    title: "Ready or Not",
    medium: 'movie',
    recommended_by_id: 8
  },
  {
    title: "Ready or Not",
    medium: 'movie',
    recommended_by_id: 1
  },
  {
    title: "Simpsons Treehouse of Horrors",
    medium: 'tv',
    recommended_by_id: 11
  },
  {
    title: "Stranger Things",
    medium: 'tv',
    recommended_by_id: 11
  },
  {
    title: "Take Shelter",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "The Conversation",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "The Invitation",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "The Killing of a Sacred Deer",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "The Lighthouse",
    medium: 'film',
    recommended_by_id: 6
  },
  {
    title: "The Monster Mash",
    medium: 'song',
    recommended_by_id: 6
  },
  {
    title: "The Shape of Water",
    medium: 'movie',
    recommended_by_id: 5
  },
  {
    title: "The VVitch",
    medium: 'movie',
    recommended_by_id: 11
  },
  {
    title: "The Witches (1990)",
    medium: 'movie',
    recommended_by_id: 8
  },
  {
    title: "Through the Woods by Emily Carole",
    medium: 'graphic novel',
    recommended_by_id: 6
  },
  {
    title: "What We Do in the Shadows",
    medium: 'movie',
    recommended_by_id: 11
  },
  {
    title: "What We Do in the Shadows",
    medium: 'tv',
    recommended_by_id: 11
  },
  {
    title: "Young Frankenstein",
    medium: 'movie',
    recommended_by_id: 8
  },
])