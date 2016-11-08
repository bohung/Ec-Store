# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.new
u.email = "monkeytai3@gmail.com"     # 可以改成自己的 e-mail
u.password = "12345678"              # 最少要八碼
u.password_confirmation = "12345678" # 最少要八碼
u.is_admin = true
u.save

create_users = for i in 1..10 do
  user = User.create(
    email: "demo_user_#{i}@test.com",
    password: "12345678",
    password_confirmation: "12345678"
    )
end

  admin_user = User.create(
    email: "admin@test.com",
    password: "12345678",
    password_confirmation: "12345678",
    is_admin: true
    )

# 建立兩筆商品資料

product = Product.new
product.title = "義式番茄莫札瑞拉煎烤三明治"
product.price = "160"
product.quantity = "10"
product.description = "主廚推薦！"
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/product1.png')))
product.photo.save!

product = Product.new
product.title = "千層繽紛蛋糕"
product.price = "160"
product.quantity = "10"
product.description = "繽紛鮮果千層蛋糕"
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/product2.png')))
product.photo.save!

product = Product.new
product.title = "黑豆糖霜薄餅"
product.price = "160"
product.quantity = "10"
product.description = "黑豆配上糖霜的經典搭配！"
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/product3.png')))
product.photo.save!

product = Product.new
product.title = "西班牙海鮮炒飯"
product.price = "160"
product.quantity = "10"
product.description = "滿滿大蝦，加上新鮮蕃茄，再配上甜而不辣的辣椒"
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/product4.png')))
product.photo.save!

product = Product.new
product.title = "黃金南瓜乳酪蛋糕"
product.price = "160"
product.quantity = "10"
product.description = "8吋黃金南瓜乳酪，精選頂級南瓜，放置常溫陰涼處熟成，至外表呈現橙黃色才能使用，大量南瓜泥使用，使蛋糕體呈現金黃色，色香味俱全，兼顧健康養生！ #最佳賞味溫度 0 ~ 5度"
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/product5.png')))
product.photo.save!

product = Product.new
product.title = "墨西哥pizza"
product.price = "199"
product.quantity = "10"
product.description = "從揉桿麵糰、配置餡料、到窯燒的過程可都是手工製作，現作現烤、新鮮又道地的披薩，絕對可以吃到不同於一般冷凍餅皮的酥脆滋味！"
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/product6.png')))
product.photo.save!


