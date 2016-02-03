# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = User.create(
	email: "reticentminds@gmail.com",
	password: "12345678", 
	password_confirmation: "12345678",
 	is_admin: true
	)


product = Product.create(
	title: "萬寶龍URBAN SPEED 漂浮簽字筆",
	description: "萬寶龍Urban Speed 漂浮系列最大的特色即是筆端透明樹脂六角星標誌，從側面看起來就像是白朗峰的白雪漂浮在空中一般，最具有品牌代表性。此款筆蓋的六角白星漂浮一改過去半圓形設計，採用梯形線條，整體更為簡潔俐落。",
	price: "15600",
	quantity: "10",
	max_quantity: "10"
	)

product = Product.create(
	title: "萬寶龍文學家系列限量鋼筆",
	description: "筆帽的造型取自托爾斯泰的故居—亞斯納亞‧博利爾納入口的立柱，筆帽頂端鑲嵌黑色和白色樹脂打造的萬寶龍六角白星，深灰色高級樹脂筆蓋、藍色大理石紋理筆尾與鍍鉑金配件，這些顏色均是托爾斯泰第一本著作的封面顏色。筆蓋環的裝飾取材自俄國的傳統編織圖案。",
	price: "30800",
	quantity: "10",
	max_quantity: "10"
	)

product = Product.create(
	title: "萬寶龍大班鉑金鋼筆(M尖)",
	description: "源自1924年的傳奇筆款，是萬寶龍的第一支鋼筆，手工打造18k金內嵌鍍銠筆尖，鍍金筆夾筆環，頂級樹脂筆身。利用優雅的活塞入墨系統，讓您體驗古老的智慧書寫結晶。當您將筆放置胸前口袋中，筆帽上的六角白星閃爍光芒宣告您的不凡品味。",
	price: "26800",
	quantity: "10",
	max_quantity: "10"
	)

product = Product.create(
	title: "萬寶龍1912傳承系列鋼筆(F尖)",
	description: "1912傳承系列鋼筆的製作細節及零件在在彰顯萬寶龍頂尖手工工藝：40個零件組成比一般鋼筆零件多一倍；經過10萬次的機械運動測試；專利兩段尾部旋鈕系統，同步結合活塞上墨功能及筆尖的伸縮動作，看似簡單確蘊含了極高的機械複雜度。",
	price: "29500",
	quantity: "10",
	max_quantity: "10"
	)

product = Product.create(
	title: "萬寶龍1912傳承系列鋼筆(M尖)",
	description: "1912傳承系列鋼筆的製作細節及零件在在彰顯萬寶龍頂尖手工工藝：40個零件組成比一般鋼筆零件多一倍；經過10萬次的機械運動測試；專利兩段尾部旋鈕系統，同步結合活塞上墨功能及筆尖的伸縮動作，看似簡單確蘊含了極高的機械複雜度。",
	price: "30500",
	quantity: "10",
	max_quantity: "10"
	)

