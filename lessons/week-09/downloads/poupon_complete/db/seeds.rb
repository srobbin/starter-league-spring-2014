AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Deal.create([
  {
    title: "Yellow",
    description: "The most commonly used mustard in the United States and Canada is sold as \"yellow mustard\" (although most prepared mustards are yellow). A very mild prepared mustard colored bright-yellow by turmeric, it was introduced in 1904 by George J. French as \"cream salad mustard\". Yellow mustard is regularly added to hot dogs, sandwiches, pretzels and hamburgers. It is also an ingredient of many potato salads, barbecue sauces, and salad dressings.",
    original_price: 10,
    discounted_price: 5,
    num_purchased: 424    
  },
  {
    title: "Spicy brown",
    description: "Spicy brown or \"deli style\" mustard is also commonly used in the United States. The seeds are coarsely ground, giving it a speckled brownish-yellow appearance. In general, it is spicier than yellow mustard. A variety popular in Louisiana is called Creole mustard.",
    original_price: 8,
    discounted_price: 7,
    num_purchased: 123   
  },
  {
    title: "Beer",
    description: "Beer mustard, which substitutes beer for vinegar, allegedly originated in the 20th century somewhere in the United States Midwest and has remained a popular local condiment.",
    original_price: 14,
    discounted_price: 12,
    num_purchased: 0   
  },
  {
    title: "Dijon",
    description: "Dijon mustard originated in 1856, when Jean Naigeon of Dijon substituted verjuice, the acidic \"green\" juice of unripe grapes, for vinegar in the traditional mustard recipe.[27] Most mustards from Dijon today contain white wine rather than verjuice.",
    original_price: 2,
    discounted_price: 1,
    num_purchased: 10
  },
  {
    title: "Whole-grain",
    description: "In whole-grain mustard, also known as granary mustard, the seeds are mixed whole with other ingredients. Different flavors and strengths can be achieved through different blends of mustard seed species.",
    original_price: 24,
    discounted_price: 3,
    num_purchased: 1    
  },
  {
    title: "Honey mustard",
    description: "Honey mustard is a blend of mustard and honey, typically 1:1.[28] It is commonly used both on sandwiches, and as a dip for finger foods such as chicken strips. It can also be combined with vinegar and/or olive oil to make a salad dressing.",
    original_price: 9,
    discounted_price: 1,
    num_purchased: 999    
  }
])
