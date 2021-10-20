# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# set up Categories
books = Category.create(title: "Books")
movies = Category.create(title: "Movies")
fruit = Category.create(title: "Fruit")

# set up Items 
books.items.build([
    {name: "The Metamorphosis", img: "https://images-na.ssl-images-amazon.com/images/I/51OoETNYFCL.jpg"},
    {name: "Pride and Prejudice", img: "http://prodimage.images-bn.com/pimages/9781499369748_p0_v3_s1200x630.jpg"},
    {name: "Dune", img: "https://images-na.ssl-images-amazon.com/images/I/41rgl-8wDsL._SX277_BO1,204,203,200_.jpg"}
]).each { |b| b.save }

movies.items.build([
    {name: "The Hunger Games", img: "https://m.media-amazon.com/images/M/MV5BMjA4NDg3NzYxMF5BMl5BanBnXkFtZTcwNTgyNzkyNw@@._V1_FMjpg_UX1000_.jpg"},
    {name: "Avengers: Endgame", img: "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810"},
    {name: "Alita: Battle Angel", img: "https://m.media-amazon.com/images/M/MV5BMTQzYWYwYjctY2JhZS00NTYzLTllM2UtZWY5ZTk0NmYwYzIyXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_.jpg"}
]).each { |m| m.save }

Item.new({name: "Contigo", img: "https://m.media-amazon.com/images/I/61VCQaerr9L._AC_SS450_.jpg"}).save 
Item.new({name: "black and white composition book", img: "https://images.squarespace-cdn.com/content/v1/53f6249be4b0fa46860f073c/1591741383305-2SP0KIKOVOBIK4XTXQ4D/composition.jpg?format=300w"}).save
Item.new({name: "Island Mango", img: "https://b3h2.scene7.com/is/image/BedBathandBeyond/300626668493769p?$690$&wid=690&hei=690"}).save