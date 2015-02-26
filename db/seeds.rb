User.delete_all
Group.delete_all
Grouping.delete_all
Bill.delete_all
BillType.delete_all
Share.delete_all

neil = User.create!([
  {email: "neil@neil.com", password: "password", first_name: "Neil", last_name: nil, provider: nil, uid: nil, user_avatar: nil, id: 17, album_cover: nil, remote_user_avatar_url: "http://imageshack.com/a/img910/5674/LvpYQ2.jpg"} ])

u1 = User.create!([
  {email: "u1@u1.com", password: "password", first_name: "Bill", last_name: "u1l", provider: nil, uid: nil, user_avatar: nil, id: 14, remote_user_avatar_url: "http://imageshack.com/a/img910/8899/UeH7bI.png"} ])

test = User.create!([
  {email: "test@hotmail.com", password: "password", first_name: nil, last_name: nil, provider: nil, uid: nil, user_avatar: nil, id: 19} ])

u2 = User.create!([
  {email: "u2@u2.com", password: "password", first_name: "Sam", last_name: "u2l", provider: nil, uid: nil, user_avatar: nil, id: 15, remote_user_avatar_url: "http://imageshack.com/a/img540/2414/ogEPy2.jpg"} ])

u3 = User.create!([
  {email: "u3@u3.com", password: "password", first_name: "Tony", last_name: "u3l", provider: nil, uid: nil, user_avatar: nil, id: 16, remote_user_avatar_url: "http://imageshack.com/a/img538/7936/0IEVSX.jpg"} ])



Bill.create!([
  {name: "Drinks", amount: 430.0, deadline: "2015-02-15", bill_type_id: 13, group_id: 5},
  {name: "Fruits", amount: 210.0, deadline: "2015-02-15", bill_type_id: 13, group_id: 5},
  {name: "Girls", amount: 1230.0, deadline: "2015-02-15", bill_type_id: 13, group_id: 5},
  {name: "Music", amount: 880.0, deadline: "2015-02-15", bill_type_id: 13, group_id: 5},
  {name: "test 1", amount: 0.0, deadline: nil, bill_type_id: 17, group_id: 6},
  {name: "Jack Danails", amount: 25.0, deadline: nil, bill_type_id: 19, group_id: 8},
  {name: "Beer", amount: 100.0, deadline: "2015-01-23", bill_type_id: 21, group_id: 8},
  {name: "Snacks", amount: 100.0, deadline: "2015-01-24", bill_type_id: 18, group_id: 6},
  {name: "Rent", amount: 500.0, deadline: "2015-01-22", bill_type_id: 22, group_id: 7}
])
BillType.create!([
  {name: "party", group_id: 5},
  {name: "u1_paty_bill_type", group_id: 5},
  {name: "u2_paty_bill_type", group_id: 5},
  {name: "u3_paty_bill_type", group_id: 5},
  {name: "test", group_id: 6},
  {name: "Food", group_id: 6},
  {name: "", group_id: 8},
  {name: "", group_id: 8},
  {name: "test", group_id: 8},
  {name: "Rent", group_id: 7}
])
Group.create!([
  {name: "Party", description: "All night party", total: nil},
  {name: "Drinks", description: "drinks for party", total: nil},
  {name: "Holiday", description: "trip to florida", total: nil},
  {name: "Rent", description: "Flat Rent", total: nil}
])
Grouping.create!([
  {user_id: 14, group_id: 5},
  {user_id: 15, group_id: 5},
  {user_id: 16, group_id: 5},
  {user_id: 18, group_id: 6},
  {user_id: 18, group_id: 7},
  {user_id: 14, group_id: 8},
  {user_id: 15, group_id: 8},
  {user_id: 18, group_id: 8}
])
Share.create!([
  {bill_type_id: 17, grouping_id: 16, percent: nil},
  {bill_type_id: 19, grouping_id: 18, percent: 50},
  {bill_type_id: 13, grouping_id: 13, percent: 50},
  {bill_type_id: 13, grouping_id: 14, percent: 25},
  {bill_type_id: 13, grouping_id: 15, percent: 25},
  {bill_type_id: 21, grouping_id: 20, percent: 50},
  {bill_type_id: 21, grouping_id: 18, percent: 25},
  {bill_type_id: 21, grouping_id: 19, percent: 25}
])
