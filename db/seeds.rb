# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# answer_list =[
# 	["국내 최초 4가 인플루엔자 백신"],
# 	["미국 FDA, 영국 MHRA, 독일 PEI 승인 받은 국내 유일 4가 백신"],
# 	["세계 22개국에서 허가, 1억 도즈 이상 판매"],
# 	["세계백신 판매 1위 GSK에서 생산"]
# ]
# answer_list.each do |name| 
# 	Q3An.create(name: name)
# end

user = User.new
user.email = 'test@innoboost.com'
user.password = 'innoboost'
user.password_confirmation = 'innoboost'
user.save!