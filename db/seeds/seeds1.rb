# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 r1 = Role.create({name: "lr_minimal", description: "Can't do much"})
 r2 = Role.create({name: "lr_future1", description: ""})
 r3 = Role.create({name: "lr_readonly", description: ""})
 r4 = Role.create({name: "lr_future2", description: ""})
 r5 = Role.create({name: "lr_create", description: ""})
 r6 = Role.create({name: "lr_future3", description: ""})
 r7 = Role.create({name: "lr_regular", description: "Can edit data, readonly lookup tables"})
 r8 = Role.create({name: "lr_future4", description: ""})
 r9 = Role.create({name: "lr_supervisor", description: "Can edit lookup tables"})
r10 = Role.create({name: "lr_future5", description: ""})
r11 = Role.create({name: "lr_delete", description: ""})
r12 = Role.create({name: "lr_future6", description: ""})
r13 = Role.create({name: "lr_vip", description: ""})
r14 = Role.create({name: "lr_future7", description: ""})
r15 = Role.create({name: "lr_special1", description: ""})
r16 = Role.create({name: "lr_seller", description: ""})
r17 = Role.create({name: "lr_future8", description: ""})
r18 = Role.create({name: "lr_admin", description: "Can perform any CRUD operation on any resource"})
 

User.create! email: 'a@e', name: "admin", password: 'a', password_confirmation: 'a', role_id: r18.id
User.create! email: 'a', name: "admin", password: 'a', password_confirmation: 'a', role_id: r18.id
u1 = User.create({name: "reg", email: "r", password: "a", password_confirmation: "a", role_id: r7.id})





User.create!([
  {id: 4, email: "dgleba", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 32, current_sign_in_at: "2017-07-15 18:04:35", last_sign_in_at: "2017-06-23 17:16:52", current_sign_in_ip: "10.5.253.124", last_sign_in_ip: "127.0.0.1", created_at: "2017-05-10 17:41:42", updated_at: "2017-07-15 18:04:35", name: "dgleba", role_id: 9},
  {id: 5, email: "rzylstra", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2017-06-07 19:10:29", last_sign_in_at: "2017-05-29 14:20:28", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", created_at: "2017-05-10 17:59:38", updated_at: "2017-06-07 19:10:30", name: "rzylstra", role_id: 9},
  {id: 6, email: "rrompen", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-06-09 17:46:38", last_sign_in_at: "2017-06-09 17:46:38", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "", created_at: "2017-06-08 19:00:28", updated_at: "2017-06-09 17:46:38", name: "rrompen", role_id: 7}
])