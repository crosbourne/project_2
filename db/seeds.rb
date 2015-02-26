User.delete_all
Group.delete_all
Grouping.delete_all
Bill.delete_all
BillType.delete_all
Share.delete_all

neil = User.create!([
  {email: "neil@neil.com", password: "password", first_name: "Neil", last_name: nil, provider: nil, uid: nil, user_avatar: nil, id: 17, remote_user_avatar_url: "http://imageshack.com/a/img910/5674/LvpYQ2.jpg"} ])

u1 = User.create!([
  {email: "u1@u1.com", password: "password", first_name: "Bill", last_name: "u1l", provider: nil, uid: nil, user_avatar: nil, id: 14, remote_user_avatar_url: "http://imageshack.com/a/img910/8899/UeH7bI.png"} ])

test = User.create!([
  {email: "test@hotmail.com", password: "password", first_name: nil, last_name: nil, provider: nil, uid: nil, user_avatar: nil, id: 19} ])

u2 = User.create!([
  {email: "u2@u2.com", password: "password", first_name: "Sam", last_name: "u2l", provider: nil, uid: nil, user_avatar: nil, id: 15, remote_user_avatar_url: "http://imageshack.com/a/img540/2414/ogEPy2.jpg"} ])

u3 = User.create!([
  {email: "u3@u3.com", password: "password", first_name: "Tony", last_name: "u3l", provider: nil, uid: nil, user_avatar: nil, id: 16, remote_user_avatar_url: "http://imageshack.com/a/img538/7936/0IEVSX.jpg"} ])



