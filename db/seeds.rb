# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Clothes", image: "/assets/clothes.jpg");
Category.create(name: "Cooks", image: "/assets/books.jpg");
Category.create(name: "Furniture", image: "/assets/furniture.jpg");
Category.create(name: "Dvds", image: "/assets/dvd.jpg");
Category.create(name: "Sport Equipment", image: "/assets/sport.jpg");
Category.create(name: "Toys", image: "/assets/toys.jpg");

Charity.create(name: "Salvation Army", philosophy: "The Army's doctrine follows the mainstream of Christian belief and its articles of faith emphasise God's saving purposes. Its objects are the advancement of the Christian religion ... of education, the relief of poverty, and other charitable objects beneficial to society or the community of mankind as a whole", website: "http://www.salvationarmy.org/");
Charity.create(name: "Save the Children", philosophy: "Save the Children believes every child deserves a future. Around the world, we give children a healthy start in life, the opportunity to learn and protection from harm.", website:"https://www.savethechildren.net/");
Charity.create(name: "Cancer Council", philosophy: "We believe that we can and will beat cancer. There are things that we can all do every day to help make this happen.", website:"http://www.cancercouncil.com.au/");


Product.create(name:"Super comfy sofa", image: "/assets/sofa.jpg", price: 55.70, size: "very large", category_id: 3)
Product.create(name:"Never wore jeans", image: "/assets/jeans.jpg", price: 15, size: "38", category_id: 1)
Product.create(name:"Ruby T-shirt", image: "/assets/ruby_tshirt.jpg", price: 15, size: "medium", category_id: 1)
Product.create(name:"SuperMario", image: "/assets/marios.jpg", price: 25, category_id: 4)
