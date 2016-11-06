# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.new
u.email = "monkeytai3@gmail.com"           # 可以改成自己的 e-mail
u.password = "12345678"              # 最少要八碼
u.password_confirmation = "12345678" # 最少要八碼
u.is_admin = true
u.save

# 建立兩筆商品資料

product = Product.new
product.title = "Color Inn"
product.price = "6500000"
product.quantity = "5"
product.description = "新大樓"
product.save

product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/color inn.jpg')))
product.photo.save!


product2 = Product.new
product2.title = "Cowa 皮夾"
product2.price = "3600"
product2.quantity = "1"
product2.description = "birthday gift"
product2.save

product2.build_photo.save
product2.photo.image.store!(File.open(File.join(Rails.root, 'public/IMG_2462.jpg')))
product2.photo.save!

