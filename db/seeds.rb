# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Photo.destroy_all
Follow.destroy_all
Like.destroy_all
Comment.destroy_all

user1 = User.create({name: "Martin", bio: "I love taking selfies!", username: "martin123", password: "martin123", photo: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/martin_profile.jpg"})
user2 = User.create({name: "Hanna", bio: "SelfieGram is the best!", username: "hanna123", password: "hanna123", photo: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hanna_profile.jpg"})
user3 = User.create({name: "Taki", bio: "I selfie, you selfie, we all selfie!", username: "takitaki", password: "takitaki", photo: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/taki_profile.jpg"})
user4 = User.create({name: "Wadah", bio: "SelfieGrammmmm", username: "wadah321", password: "wadah321", photo: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/wada_profile.jpg"})
user5 = User.create({name: "Jaxon", bio: "I love greenies, bully sticks and SelfieGram!", username: "jaxonDaLabradoodle", password: "jaxonDaLabradoodle", photo: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/jaxon_profile.png"})

photo5 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/martinphoto5.JPG", user_id: user1.id, caption: 'Nice selfie with the wife and I.'})
photo22 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/jaxonphoto1.jpg", user_id: user5.id, caption: 'Me relaxing in the park!'})
photo6 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/martinphoto6.JPG", user_id: user1.id, caption: 'I love driving and I love selfies.'})
photo7 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/martinphoto7.jpg", user_id: user1.id, caption: 'A selfie with Zora!'})
photo11 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto4.jpg", user_id: user2.id, caption: 'Charlie didnt feel so good in the car, so I thought a picture would cheer her up!'})
photo12 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto5.jpg", user_id: user2.id, caption: 'Dunkin!'})
photo24 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/jaxonphoto3.jpg", user_id: user5.id, caption: 'Hahaha a nice close up'})
photo16 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto9.jpg", user_id: user2.id, caption: 'Zora enjoying the wind!'})
photo17 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto10.jpg", user_id: user2.id, caption: 'Saw Stassi on the street and had to ask for a selfie :D'})
photo19 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/takiphoto2.jpg", user_id: user3.id, caption: 'Hah, enjoy the selfie!'})
photo19 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/takiphoto3.jpg", user_id: user3.id, caption: 'Another one!'})
photo13 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto6.jpg", user_id: user2.id, caption: 'Me and bestie <3'})
photo20 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/wadaphoto1.jpg", user_id: user4.id, caption: 'Mmmm I look good!'})
photo14 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto7.jpg", user_id: user2.id, caption: 'Lol. Snapchat and Selfiegram = life'})
photo23 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/jaxonphoto2.jpg", user_id: user5.id, caption: 'Got a fresh cut, and lookin fresh!'})
photo2 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/martinphoto2.JPG", user_id: user1.id, caption: 'Wine and paint night for v-day <3'})
photo15 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto8.jpg", user_id: user2.id, caption: 'Disney World for our 1 year anni.'})
photo3 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/martinphoto3.JPG", user_id: user1.id, caption: 'Kansas City Royals baseball game with my manager Bryan!'})
photo9 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto2.jpg", user_id: user2.id, caption: 'Me and my baby Jaxon :)'})
photo19 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/takiphoto4.jpg", user_id: user3.id, caption: 'That smile tho.. :)'})
photo10 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto3.jpg", user_id: user2.id, caption: 'Why does he look like that lol'})
photo4 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/martinphoto4.jpg", user_id: user1.id, caption: 'Hello from cancun.  Beautiful weather, beautiful wedding!'})
photo21 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/wadaphoto2.jpg", user_id: user4.id, caption: 'Me and my boy King!'})
photo25 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/jaxonphoto4.jpg", user_id: user5.id, caption: "I don't want to talk about this..."})
photo26 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/jaxonphoto5.jpg", user_id: user5.id, caption: 'tbt me @ 7 weeks!'})
photo18 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/takiphoto1.jpg", user_id: user3.id, caption: 'Me and Carmen, fyi Carmen is a #3 competitive eater in the world!'})
photo8 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/hannaphoto1.jpg", user_id: user2.id, caption: 'iPic ready to watch Wonderwoman!!'})
photo1 = Photo.create({image: "https://s3.us-east-2.amazonaws.com/selfiegram-dev/users/photos/000/000/002/original/martinphoto1.JPG", user_id: user1.id, caption: 'An engagement photo of the wife and I.'})


Follow.create({follower_id: user1.id, followee_id: user2.id})
Follow.create({follower_id: user1.id, followee_id: user3.id})
Follow.create({follower_id: user1.id, followee_id: user4.id})
Follow.create({follower_id: user2.id, followee_id: user1.id})
Follow.create({follower_id: user2.id, followee_id: user3.id})
Follow.create({follower_id: user2.id, followee_id: user4.id})
Follow.create({follower_id: user3.id, followee_id: user1.id})
Follow.create({follower_id: user3.id, followee_id: user2.id})
Follow.create({follower_id: user3.id, followee_id: user4.id})
Follow.create({follower_id: user4.id, followee_id: user1.id})
Follow.create({follower_id: user4.id, followee_id: user2.id})
Follow.create({follower_id: user4.id, followee_id: user3.id})
Follow.create({follower_id: user1.id, followee_id: user5.id})
Follow.create({follower_id: user5.id, followee_id: user1.id})
Follow.create({follower_id: user5.id, followee_id: user2.id})
Follow.create({follower_id: user2.id, followee_id: user5.id})

# Like.create({user_id: user1.id, photo_id: photo1.id})
Like.create({user_id: user1.id, photo_id: photo2.id})
# Like.create({user_id: user1.id, photo_id: photo3.id})
Like.create({user_id: user1.id, photo_id: photo4.id})
Like.create({user_id: user1.id, photo_id: photo5.id})
Like.create({user_id: user1.id, photo_id: photo6.id})
Like.create({user_id: user1.id, photo_id: photo7.id})
Like.create({user_id: user1.id, photo_id: photo8.id})
Like.create({user_id: user1.id, photo_id: photo9.id})
Like.create({user_id: user1.id, photo_id: photo10.id})
# Like.create({user_id: user1.id, photo_id: photo11.id})
Like.create({user_id: user1.id, photo_id: photo12.id})
Like.create({user_id: user1.id, photo_id: photo13.id})
Like.create({user_id: user1.id, photo_id: photo14.id})
Like.create({user_id: user1.id, photo_id: photo15.id})
# Like.create({user_id: user1.id, photo_id: photo16.id})
Like.create({user_id: user1.id, photo_id: photo17.id})
Like.create({user_id: user1.id, photo_id: photo18.id})
Like.create({user_id: user1.id, photo_id: photo19.id})
Like.create({user_id: user1.id, photo_id: photo20.id})
Like.create({user_id: user1.id, photo_id: photo21.id})
Like.create({user_id: user2.id, photo_id: photo1.id})
Like.create({user_id: user2.id, photo_id: photo2.id})
Like.create({user_id: user2.id, photo_id: photo3.id})
Like.create({user_id: user2.id, photo_id: photo4.id})
Like.create({user_id: user2.id, photo_id: photo5.id})
Like.create({user_id: user2.id, photo_id: photo6.id})
Like.create({user_id: user2.id, photo_id: photo7.id})
Like.create({user_id: user2.id, photo_id: photo8.id})
Like.create({user_id: user2.id, photo_id: photo9.id})
# Like.create({user_id: user2.id, photo_id: photo10.id})
Like.create({user_id: user2.id, photo_id: photo11.id})
Like.create({user_id: user2.id, photo_id: photo12.id})
Like.create({user_id: user2.id, photo_id: photo13.id})
Like.create({user_id: user2.id, photo_id: photo14.id})
Like.create({user_id: user2.id, photo_id: photo15.id})
Like.create({user_id: user2.id, photo_id: photo16.id})
Like.create({user_id: user2.id, photo_id: photo17.id})
Like.create({user_id: user2.id, photo_id: photo18.id})
# Like.create({user_id: user2.id, photo_id: photo19.id})
# Like.create({user_id: user2.id, photo_id: photo20.id})
Like.create({user_id: user2.id, photo_id: photo21.id})
Like.create({user_id: user3.id, photo_id: photo1.id})
Like.create({user_id: user3.id, photo_id: photo2.id})
Like.create({user_id: user3.id, photo_id: photo3.id})
Like.create({user_id: user3.id, photo_id: photo4.id})
Like.create({user_id: user3.id, photo_id: photo5.id})
Like.create({user_id: user3.id, photo_id: photo6.id})
Like.create({user_id: user3.id, photo_id: photo7.id})
Like.create({user_id: user3.id, photo_id: photo8.id})
# Like.create({user_id: user3.id, photo_id: photo9.id})
Like.create({user_id: user3.id, photo_id: photo10.id})
Like.create({user_id: user3.id, photo_id: photo11.id})
Like.create({user_id: user3.id, photo_id: photo12.id})
Like.create({user_id: user3.id, photo_id: photo13.id})
Like.create({user_id: user3.id, photo_id: photo14.id})
Like.create({user_id: user3.id, photo_id: photo15.id})
Like.create({user_id: user3.id, photo_id: photo16.id})
Like.create({user_id: user3.id, photo_id: photo17.id})
# Like.create({user_id: user3.id, photo_id: photo18.id})
Like.create({user_id: user3.id, photo_id: photo19.id})
Like.create({user_id: user3.id, photo_id: photo20.id})
Like.create({user_id: user3.id, photo_id: photo21.id})
Like.create({user_id: user4.id, photo_id: photo1.id})
Like.create({user_id: user4.id, photo_id: photo2.id})
Like.create({user_id: user4.id, photo_id: photo3.id})
Like.create({user_id: user4.id, photo_id: photo4.id})
Like.create({user_id: user4.id, photo_id: photo5.id})
Like.create({user_id: user4.id, photo_id: photo6.id})
Like.create({user_id: user4.id, photo_id: photo7.id})
Like.create({user_id: user4.id, photo_id: photo8.id})
# Like.create({user_id: user4.id, photo_id: photo9.id})
Like.create({user_id: user4.id, photo_id: photo10.id})
Like.create({user_id: user4.id, photo_id: photo11.id})
Like.create({user_id: user4.id, photo_id: photo12.id})
Like.create({user_id: user4.id, photo_id: photo13.id})
Like.create({user_id: user4.id, photo_id: photo14.id})
Like.create({user_id: user4.id, photo_id: photo15.id})
Like.create({user_id: user4.id, photo_id: photo16.id})
Like.create({user_id: user4.id, photo_id: photo17.id})
Like.create({user_id: user4.id, photo_id: photo18.id})
Like.create({user_id: user4.id, photo_id: photo19.id})
# Like.create({user_id: user4.id, photo_id: photo20.id})
Like.create({user_id: user4.id, photo_id: photo21.id})


Comment.create({user_id: user1.id, photo_id: photo20.id, body: "I cant agree with you more lol"})
Comment.create({user_id: user3.id, photo_id: photo20.id, body: "Nice Wadah!"})
Comment.create({user_id: user2.id, photo_id: photo1.id, body: "Aww Honey! Love the picture!"})
Comment.create({user_id: user4.id, photo_id: photo1.id, body: "Cute, cute"})
Comment.create({user_id: user2.id, photo_id: photo2.id, body: "Mine's better..."})
Comment.create({user_id: user1.id, photo_id: photo2.id, body: "idk........"})
Comment.create({user_id: user3.id, photo_id: photo2.id, body: "Honestly, they both look great!"})
Comment.create({user_id: user2.id, photo_id: photo4.id, body: "I wanna go back! :("})
Comment.create({user_id: user2.id, photo_id: photo7.id, body: "Zoraaaaa!!!"})
Comment.create({user_id: user3.id, photo_id: photo8.id, body: "How was the movie?"})
Comment.create({user_id: user2.id, photo_id: photo8.id, body: "I really enjoyed it!  I recommend it!"})
Comment.create({user_id: user4.id, photo_id: photo8.id, body: "I gotta go watch it this weekend!"})
Comment.create({user_id: user1.id, photo_id: photo9.id, body: "Lol cute pic!  We need to upload more of Jaxon!"})
Comment.create({user_id: user1.id, photo_id: photo18.id, body: "I heard hes competiting on July 4th!"})
Comment.create({user_id: user2.id, photo_id: photo18.id, body: "Thats so cool!"})
Comment.create({user_id: user4.id, photo_id: photo18.id, body: "Lets go Carmen!"})
Comment.create({user_id: user1.id, photo_id: photo21.id, body: "Kingsley!"})
Comment.create({user_id: user3.id, photo_id: photo21.id, body: "I love the pic!"})
