# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..5).each do |x|
    Card.create(card_id: 'c1', card_name: "name#{x}", content: "내용#{x}",
    score1: 1,
    score2: 2,
    score3: 3,
    score4: 4,
    score5: 5,
    remote_avatar_url: 'http://2.bp.blogspot.com/-fbEhubjVOYU/UHrGVp6FgPI/AAAAAAAAAlQ/ad8V7Qe2cIc/s1600/brandt1.jpg')
end

(1..5).each do |x|
    Card.create(card_id: 'c2', card_name: "name#{x}", content: "내용#{x}",
    score1: 1,
    score2: 2,
    score3: 3,
    score4: 4,
    score5: 5,
    remote_avatar_url: 'http://4.bp.blogspot.com/-0aSPHrBmR94/UHrF5id7S0I/AAAAAAAAAkw/DqszpmIyqHI/s1600/483db2abe43d5wild_20life002.jpg')
end

(1..5).each do |x|
    Card.create(card_id: 'c3', card_name: "name#{x}", content: "내용#{x}",
    score1: 1,
    score2: 2,
    score3: 3,
    score4: 4,
    score5: 5,
    remote_avatar_url: 'http://1.bp.blogspot.com/-jwKLGK_rXpU/UHrGUBs3kMI/AAAAAAAAAlI/skieOmsdHQQ/s1600/Wildlife02.jpg')
end

(1..5).each do |x|
    Card.create(card_id: 'c4', card_name: "name#{x}", content: "내용#{x}",
    score1: 1,
    score2: 2,
    score3: 3,
    score4: 4,
    score5: 5,
    remote_avatar_url: 'http://4.bp.blogspot.com/-iY11TsLVvJ4/UHrGXiqlxcI/AAAAAAAAAlY/lxUZSkdN2IY/s1600/nick-brandt571.jpg')
end

(1..5).each do |x|
    Card.create(card_id: 'c5', card_name: "name#{x}", content: "내용#{x}",
    score1: 1,
    score2: 2,
    score3: 3,
    score4: 4,
    score5: 5,
    remote_avatar_url: 'http://2.bp.blogspot.com/-v9K37FwEVf8/UHrGfcVQeKI/AAAAAAAAAlw/-O6VcynZ_dU/s1600/wildlife-4.jpg')
end
