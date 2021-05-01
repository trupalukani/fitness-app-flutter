class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal({
    this.mealTime,
    this.imagePath,
    this.kiloCaloriesBurnt,
    this.name,
    this.timeTaken,
    this.ingredients,
    this.preparation,
  });
}

final meals = [
  Meal(
    mealTime: "BREAKFAST 1",
    name: "OATS",
    kiloCaloriesBurnt: "258",
    timeTaken: "20",
    imagePath: 'lib/assets/images/oats.jpg',
    ingredients: [
      "1 3/4 cups milk",
      "1 1/2 tbsp honey",
      "1 1/2 tbsp peanut butter",
      "1 cup uncooked oats",
      "dried fruits",
      "toasted almonds"
    ],
    preparation:
        '''In a mixing bowl, whisk together the milk, honey, nut butter, and any protein powder you may be adding until smooth. Stir in the oats, salt, and any other optional additions (wait to add fresh fruit or nuts so that they stay fresh/crisp). Cover the bowl tightly with plastic (or transfer it to an airtight storage container) and refrigerate overnight or for up to 5 days.

        When ready to serve, stir the oats and portion the desired amount into your bowl. (At this point, you can also divide the oats into individual containers and refrigerate for the week.) Top with any desired fresh fruit, nuts, or other toppings. (If placing the oats in individual jars, feel free to add toppings to each, as they will store fine this way. If storing as a single larger batch for the week, I find it is best to wait to add the fresh toppings/nuts until just before serving so that they don't all sink to the bottom.) Enjoy cold and congratulate yourself for your breakfast-planning prowess.''',
  ),
  Meal(
    mealTime: "LUNCH 1",
    name: "SALAD",
    kiloCaloriesBurnt: "344",
    timeTaken: "20",
    imagePath: 'lib/assets/images/chickpeasalad.jpg',
    ingredients: [
      "1 rib celery",
      "1 1/2 cups cooked chickpeas",
      "3 green onions",
      "cashew cream",
      "1 tsp lemon juice",
      "4 slices bread",
      "sprouts",
    ],
    preparation:
        '''Thinly slice the celery (if it’s a large rib, cut in half lengthwise first). Thinly slice the green onions.

       Drain and rinse the chickpeas. In a medium bowl, smash the chickpeas with a fork.

       Combine the chickpeas with the chopped celery and green onions, mayonnaise, lemon juice, and celery seed. Add about 1/4 to 1/2 teaspoon kosher salt, depending on your chickpea brand and taste preferences, and fresh ground pepper to taste. Taste and salt until the flavor pops! If the salad is dry, add more mayonnaise (cooked chickpeas have a drier texture than canned).

       As semble the chickpea salad sandwich: If desired, spread the bread with hummus (this amps it up a bit but not required). Top the sandwich with lettuce or greens and chickpea spread.''',
  ),
  Meal(
    mealTime: "DINNER 1",
    name: "PANCAKES",
    kiloCaloriesBurnt: "358",
    timeTaken: "20",
    imagePath: 'lib/assets/images/pancakes.jpg',
    ingredients: [
      "1 cup floor",
      "2 1/2 tsp baking powder",
      "1/2 tsp salt",
      "3/4 tbsp white sugar",
      "3/4 cups milk",
      "2 tbsp butter",
      "honey or maple syrup",
    ],
    preparation:
        '''In a large bowl, bring together all the dry ingredients. Make a well in the center and pour in the milk, egg and melted butter. Mix until smooth batter is formed.

       Heat a lightly oiled frying pan over medium high heat. Pour the batter onto the pan, using approximately 1/4 cup for each pancake.

       Brown on both sides and stack 2-3 pieces on a plate.

       Sprinkle with some dusted sugar and top with some whole mixed berries. Serve melted butter and maple syrup on the side.''',
  ),
  Meal(
    mealTime: "LUNCH 2",
    name: "SPAGHETTI",
    kiloCaloriesBurnt: "628",
    timeTaken: "20",
    imagePath: 'lib/assets/images/spaghettisquash.jpg',
    ingredients: [
      "2 tbsp olive oil",
      "2 tbsp garlic",
      "28 ounces diced tomatoes",
      "1 tsp salt",
      "1/2 tsp dried basil",
      "1/2 tsp red pepper flakes",
      "10 ounces spaghetti noodles",
      "3/4 cup water",
      "3/4 cup shredded cheese"
    ],
    preparation: 
      '''Heat oil in large skillet over medium heat. Saute garlic for a minute then add tomatoes, salt, pepper, garlic salt, basil and red pepper flakes. Add spaghetti noodles and water then cover with lid and boil on medium high for 7-8 minutes until noodles are softened. Remove lid and stir to combine. Serve like this or top with shredded cheese and close lid for 2 minutes to melt. Remove and serve warm.''',
  ),
  Meal(
    mealTime: "DINNER 2",
    name: "VEG TACOS",
    kiloCaloriesBurnt: "640",
    timeTaken: "20",
    imagePath: 'lib/assets/images/vegtaco.jpg',
    ingredients: [
      "quick pickled onions",
      "creamy avocado dip",
      "easy refried beans",
      "8 corn tortillas",
      "green cabbage",
      "shredded cheese",
    ],
    preparation: 
        '''Prepare the onions, avocado dip, and beans as directed, in that order.

       Once they’re ready, warm the tortillas in a large skillet over medium heat in batches, flipping to warm each side. Alternatively, you can warm them directly over a low flame on a gas range. Stack the warmed tortillas on a plate and cover with a tea towel to keep warm.

       To assemble the tacos, spread refried beans down the center of each tortilla. Top with avocado dip and onions (for reference, I used all of the beans and about half of the avocado dip and onions). Finish the tacos with garnishes of your choice, and serve immediately.

       Leftover components are best served separately; reheat the tortillas and beans before serving. Leftover pickled onions and avocado dip are great on quesadillas, nachos or tortilla chips, sandwiches, etc.''',
  ),
];
