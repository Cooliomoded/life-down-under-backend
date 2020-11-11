# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

u1 = User.create(username: "Ix", bio: "I'm a Wizard Harry.", location: "Here", profile_pic: "https://media-exp1.licdn.com/dms/image/C5603AQHjmSGs0rz_CQ/profile-displayphoto-shrink_200_200/0?e=1609372800&v=beta&t=2SQiggtbS3G_fE0RCrRu3YWNIBeF-pG4K7Fv5f-jxJ4", password: "rose")
u2 = User.create(username: "Adam", bio: "I'm a Wizard too Harry.", location: "There", profile_pic: "https://res.cloudinary.com/practicaldev/image/fetch/s--9OMtd0Ht--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/256561/23a9f5a3-f043-4001-a02a-d401e27a5d0d.jpeg", password: "rose")
u3 = User.create(username: "Davis", bio: "I'm not a Wizard Harry.", location: "Everywhere", profile_pic: "", password: "rose")
u4 = User.create(username: "Noah", bio: "I'm a secret Wizard Harry.", location: "Nowhere", profile_pic: "https://miro.medium.com/fit/c/262/262/0*lhDs8wO4dHvrOcN9", password: "rose")
