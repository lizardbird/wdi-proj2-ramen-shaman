# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all

review1 = Review.create(
  {
    title: "This is a review",
    content: "Butter Nissin instant cup ramen ramen burger Nissin instant cup ramen Tokushima soy sauce scallions abura soba yuzu bamboo slices pork bones bamboo slices rice Yokohama soy sauce toasted sesame seeds Tokyo rice. Fish broth miso abura soba pork bones soy sauce Hakata corn Hakodate scallions curry Asahikawa soy sauce pork cubes. Hakata bean sprouts pork bones miso chilli flavoured oil minced garlic Kagoshima. Hakata fish broth Asahikawa pork cubes Wakayama Kagoshima leek Kagoshima lard spinach Tokyo.",
    img_url: "https://ramenipsum.herokuapp.com/assets/img/afuri_yuzu_shio.jpg"
  }
)
