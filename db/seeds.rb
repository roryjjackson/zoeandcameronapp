# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Album.destroy_all
Rsvp.destroy_all

puts "everything destroyed"

puts "creating album"

require "open-uri"

album1 = Album.create(title: "Shared Photo Album", description: "All these photographs will be hand selected to go into our scrap book for after the wedding, so whether they'll make us howl with laughter, shed a few tears or smile fondly, add as many as you can and we can all reminisce!")

file = URI.open("https://res.cloudinary.com/dfipoufmj/image/upload/v1666015815/DSC02516_hw35a6.jpg")
file1 = URI.open("https://res.cloudinary.com/dfipoufmj/image/upload/v1666015814/DSC02503_tlgzxu.jpg")
file2 = URI.open("https://res.cloudinary.com/dfipoufmj/image/upload/v1666015814/DSC02483_aanuuo.jpg")
file3 = URI.open("https://res.cloudinary.com/dfipoufmj/image/upload/v1666015813/DSC02463_gi47jy.jpg")
file4 = URI.open("https://res.cloudinary.com/dfipoufmj/image/upload/v1666015813/DSC02476_wjh9qn.jpg")
file5 = URI.open("https://res.cloudinary.com/dfipoufmj/image/upload/v1666015813/DSC02475_ihaufd.jpg")
file6 = URI.open("https://res.cloudinary.com/dfipoufmj/image/upload/v1666015812/DSC02471_su5dc8.jpg")
file7 = URI.open("https://res.cloudinary.com/dfipoufmj/image/upload/v1666015811/DSC02450_dmkao8.jpg")

album1.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
album1.photos.attach(io: file1, filename: "nes.png", content_type: "image/png")
album1.photos.attach(io: file2, filename: "nes.png", content_type: "image/png")
album1.photos.attach(io: file3, filename: "nes.png", content_type: "image/png")
album1.photos.attach(io: file4, filename: "nes.png", content_type: "image/png")
album1.photos.attach(io: file5, filename: "nes.png", content_type: "image/png")
album1.photos.attach(io: file6, filename: "nes.png", content_type: "image/png")
album1.photos.attach(io: file7, filename: "nes.png", content_type: "image/png")

album1.save!

puts "created album 1"
