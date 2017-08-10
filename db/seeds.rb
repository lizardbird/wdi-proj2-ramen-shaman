# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Restaurant.destroy_all
Bowl.destroy_all
Comment.destroy_all
ToppingTag.destroy_all
Topping.destroy_all

liz = User.create!(first_name: "Liz", last_name: "Jewell", email: 'eghelms@gmail.com', password: "password", city: "Washington DC", bio: "I am a ramen loveer", img_url:"https://st.hzcdn.com/simgs/a5b3d7290265a2db_3-1798/liz_helms.jpg")

rests = Restaurant.create!([
  {
name: 'Daikaya Ramen Shop',
address: '705 6th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/0aU3IJ7MJhATpJqffbCC9g/o.jpg',
price: '$$'
},
{
name: 'Sakuramen',
address: '2441 18th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20009',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/M7-w7ZwZoFlxw1mnUI6EQg/o.jpg',
price: '$$'
},
{
name: 'OKI bowl at Georgetown',
address: '1608 Wisconsin Ave NW',
city: 'Washington, DC',
state: 'DC',
zip: '20007',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/scMLgna4oFFjRXOKNOVEiA/o.jpg',
price: '$$'
},
{
name: 'Toki Underground',
address: '1234 H St NE',
city: 'Washington, DC',
state: 'DC',
zip: '20002',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/wY4xWF6-khRhnJLQGAwXDg/o.jpg',
price: '$$'
},
{
name: 'Haikan',
address: '805 V St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/NOdG6nzfQ4vvKzMT5N7dHA/o.jpg',
price: '$$'
},
{
name: 'Oki Bowl DC',
address: '1817 M St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20036',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/9ZzqQ4TpdbgWbyankqLEIA/o.jpg',
price: '$$'
},
{
name: 'Chaplin\'s',
address: '1501 9th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/hjfG7uKUH3yDHFR6k8BMmw/o.jpg',
price: '$$'
},
{
name: 'Umaya Izakaya',
address: '733 10th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/o4MPwTScdYgT3DSBeb_NCw/o.jpg',
price: '$$'
},
{
name: 'Bantam King',
address: '501 G St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/P4ngUevF98Ty_yVTm7nc7g/o.jpg',
price: '$$'
},
{
name: 'Nagomi Izakaya',
address: '1990 M St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20036',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/aBjxIN84DmMvkAR1PL34wQ/o.jpg',
price: '$$'
},
{
name: 'Daikaya Izakaya',
address: '705 6th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/Nw-C41E7Fvmfs17ChFyzWw/o.jpg',
price: '$$'
},
{
name: 'Let\'s Mix! BiBiJa!',
address: '209 Pennsylvania Ave SE',
city: 'Washington, DC',
state: 'DC',
zip: '20003',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/CWkfVQpfTby1bQx78jslIw/o.jpg',
price: '$$'
},
{
name: 'Reren',
address: '817 7th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/mMeWOLbw6DROLDJTE-5AqA/o.jpg',
price: '$$'
},
{
name: 'Kofuku',
address: '815 7th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/BZbCqXy1uKsQHPDJtigCtw/o.jpg',
price: '$$'
},
{
name: 'Donburi',
address: '2438 18th N W',
city: 'Washington, DC',
state: 'DC',
zip: '20009',
img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/kCkd75jbg377y7t5bUzjLQ/o.jpg',
price: '$$'
},
{
name: 'Rakuya',
address: '1900 Q St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20009',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/DNfyEZ0LZW2vElLoy8QiOw/o.jpg',
price: '$$'
},
{
name: 'DC Noodles',
address: '1412 U St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20009',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/HTBk8Bjh6ykVDVSlS3NTlA/o.jpg',
price: '$$'
},
{
name: 'BiBap',
address: '1730 Connecticut Ave NW',
city: 'Washington, DC',
state: 'DC',
zip: '20009',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/yhvaxOYWYHiOQA-t1kw6QQ/o.jpg',
price: '$'
},
{
name: 'Kintaro',
address: '1039 33rd St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20007',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/86ZRjx175RJInzTsYkESCA/o.jpg',
price: '$$'
},
{
name: 'Shaku Ramen Bar',
address: '',
city: 'Washington, DC',
state: 'DC',
zip: '20002',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/E7-V8aBTPS6i-7NwldUWJw/o.jpg',
price: ''
},
{
name: 'Raku',
address: '3312 Wisconsin Ave NW',
city: 'Washington, DC',
state: 'DC',
zip: '20016',
img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/mjhlCUQxnwIV431XuT_YjA/o.jpg',
price: '$$'
},
{
name: 'Yosaku Japanese Restaurant',
address: '4712 Wisconsin Ave NW',
city: 'Washington, DC',
state: 'DC',
zip: '20016',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/lqaZS9ldpDYOD9LPI9Zw1w/o.jpg',
price: '$$'
},
{
name: 'Kanji Kana Restaurant',
address: '1018 Vermont Ave NW',
city: 'Washington, DC',
state: 'DC',
zip: '20005',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/RBADDFZldx_UeW9_DE9SYg/o.jpg',
price: '$$'
},
{
name: 'Sushi Taro',
address: '1503 17th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20036',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/mKVGr4JagzkWfeXIAXPHPw/o.jpg',
price: '$$$$'
},
{
name: 'Paper Horse',
address: '2201 I St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20037',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/japSXZTe2SX7e_tiMich8A/o.jpg',
price: ''
},
{
name: 'Boru Ramen',
address: '2915 Columbia Pike',
city: 'Arlington',
state: 'VA',
zip: '22204',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/QFPx6-zug8vCO6-1-GtcYQ/o.jpg',
price: '$$'
},
{
name: 'Triple B Fresh',
address: '1506 19th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20036',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/N7aGbEShCxobvdKeTmHwxw/o.jpg',
price: '$'
},
{
name: 'Hanabi Ramen Clarendon',
address: '3024 Wilson Blvd',
city: 'Arlington',
state: 'VA',
zip: '22201',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/LH7C1Zcf3YXqBE_C5F6CVg/o.jpg',
price: '$$'
},
{
name: 'Rice Bar',
address: '1020 19th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20036',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/XbLex1u6zlxw53lNGn6w-Q/o.jpg',
price: '$$'
},
{
name: 'Miso Honey',
address: '',
city: 'Washington, DC',
state: 'DC',
zip: '',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/JShEktWSF-oJaKEEhUzETA/o.jpg',
price: '$$'
},
{
name: 'Bul',
address: '2431 18th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20009',
img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/rme-xLwHQ6y5ZjEE_5JYyg/o.jpg',
price: '$$'
},
{
name: 'Absolute Noodle',
address: '772 5th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/ATXEsQT8uwmaPV-WjYbmwA/o.jpg',
price: '$$'
},
{
name: 'Nooshi',
address: '524 8th St SE',
city: 'Washington, DC',
state: 'DC',
zip: '20003',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/br4n_vquaxKC0Gm5neYLNw/o.jpg',
price: '$$'
},
{
name: 'BAB Korean Fusion',
address: '1387 H St NE',
city: 'Washington, DC',
state: 'DC',
zip: '20002',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/bt-Q-rKO3DEHORl8oPWnBQ/o.jpg',
price: '$'
},
{
name: 'Sakana Japanese Restaurant',
address: '2026 P St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20036',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/Nvv3Nbf_b6R6hQvtT6cu4Q/o.jpg',
price: '$$'
},
{
name: 'SEI',
address: '444 7th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20004',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/LFqWUlbtsG7RTS2qNytosA/o.jpg',
price: '$$$'
},
{
name: 'Momiji',
address: '505 H St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20001',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/Ix_hMFsSlQCUUBQPa_Py3w/o.jpg',
price: '$$'
},
{
name: 'Gaijin Ramen Shop',
address: '3800 Lee Hwy',
city: 'Arlington',
state: 'VA',
zip: '22207',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/v-Nhw7ILx4lBbbGUM4ZK-A/o.jpg',
price: '$$'
},
{
name: 'Toku Japanese and Asian Cuisine',
address: '1301 U St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20009',
img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/lNaJwW9AmwMaPKJ8M2OVjA/o.jpg',
price: '$$'
},
{
name: 'Umi Japanese Cuisine',
address: '2625 Connecticut Ave',
city: 'Washington, DC',
state: 'DC',
zip: '20008',
img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/n4NafJzmlqTwkJ46yiY5-Q/o.jpg',
price: '$$'
},
{
name: 'Zentan Restaurant',
address: '1155 14th St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20005',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/acPEb3tTHz8cr4x_kdiRhg/o.jpg',
price: '$$$'
},
{
name: 'The Source',
address: '575 Pennsylvania Ave NW',
city: 'Washington, DC',
state: 'DC',
zip: '20565',
img_url: 'https://s3-media4.fl.yelpcdn.com/bphoto/5KGduMh01BR4YFv75J12rw/o.jpg',
price: '$$$'
},
{
name: 'Ichiban Sushi & Ramen',
address: '4251 Campbell Ave',
city: 'Arlington',
state: 'VA',
zip: '22206',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/JT_KqWT9FQz6ozSf9eFnAw/o.jpg',
price: '$$'
},
{
name: 'Shanghai Tokyo Cafe',
address: '1376 Park Rd NW',
city: 'Washington, DC',
state: 'DC',
zip: '20010',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/YLBKwlIMZHOW9qcKr3XwFQ/o.jpg',
price: '$$'
},
{
name: 'Makoto Restaurant',
address: '4822 MacArthur Blvd NW',
city: 'Washington, DC',
state: 'DC',
zip: '20007',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/qLsd_Ps1HJu8A1pTbTBjcQ/o.jpg',
price: '$$$$'
},
{
name: 'Sushi Aoi',
address: '1100 New York Ave NW',
city: 'Washington, DC',
state: 'DC',
zip: '20005',
img_url: 'https://s3-media2.fl.yelpcdn.com/bphoto/ttGUPL6t0Gv99DnfVqcNhg/o.jpg',
price: '$$'
},
{
name: 'Izakaya Seki',
address: '1117 V St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20009',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/LRkRXAJp158JhMflw4mRpg/o.jpg',
price: '$$$'
},
{
name: 'Kaz Sushi Bistro',
address: '1915 I St NW',
city: 'Washington, DC',
state: 'DC',
zip: '20006',
img_url: 'https://s3-media3.fl.yelpcdn.com/bphoto/WNfvSua6xOvkM48csflOlg/o.jpg',
price: '$$$'
},
{
name: 'Hikari Sushi & Sake Bar',
address: '644 H St NE',
city: 'Washington, DC',
state: 'DC',
zip: '20002',
img_url: 'https://s3-media1.fl.yelpcdn.com/bphoto/KGBkVBw8F5rOIFp0_Q47Rg/o.jpg',
price: '$$'
}
])

bowls = liz.bowls.create!([
  {
    price: 10,
    broth: "miso",
    noodle: "buckwheat",
    protein: "pork",
    is_veg: false,
    title: "Best Bowl I've Ever Binged On",
    review: "Butter Nissin instant cup ramen ramen burger Nissin instant cup ramen Tokushima soy sauce scallions abura soba yuzu bamboo slices pork bones bamboo slices rice Yokohama soy sauce toasted sesame seeds Tokyo rice. Fish broth miso abura soba pork bones soy sauce Hakata corn Hakodate scallions curry Asahikawa soy sauce pork cubes. Hakata bean sprouts pork bones miso chilli flavoured oil minced garlic Kagoshima. Hakata fish broth Asahikawa pork cubes Wakayama Kagoshima leek Kagoshima lard spinach Tokyo.",
    img_url: "https://ramenipsum.herokuapp.com/assets/img/afuri_yuzu_shio.jpg",
    restaurant: rests[0]
  },
  {
    price: 15,
    broth: "shio",
    noodle: "wheat",
    protein: "tofu",
    is_veg: true,
    title: "Savory, Salty, Seaweedy!",
    review: "Butter Nissin instant cup ramen ramen burger Nissin instant cup ramen Tokushima soy sauce scallions abura soba yuzu bamboo slices pork bones bamboo slices rice Yokohama soy sauce toasted sesame seeds Tokyo rice. Fish broth miso abura soba pork bones soy sauce Hakata corn Hakodate scallions curry Asahikawa soy sauce pork cubes. Hakata bean sprouts pork bones miso chilli flavoured oil minced garlic Kagoshima. Hakata fish broth Asahikawa pork cubes Wakayama Kagoshima leek Kagoshima lard spinach Tokyo.",
    img_url: "https://media.blueapron.com/recipes/124/c_main_dish_images/20140808-1822-348-1459/VegetarianMisoRamen_BlueApron_high_feature.jpg",
    restaurant: rests[2]
  }
])


liz.comments.create!(
  {
    name: "Liz",
    email: "eghelms@gmail.com",
    comment: "This is a comment created in the seed file.",
    bowl: bowls[1]
  }
)

egg = Topping.create(name: "Egg")
sprouts = Topping.create(name: "Sprouts")

ToppingTag.create([
 {
 topping: egg,
 bowl: bowls[0]
 },
 {
 topping: sprouts,
 bowl: bowls[1]
 },
 {
 topping: egg,
 bowl: bowls[1]
 }
])
