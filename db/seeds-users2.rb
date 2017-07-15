Role.create!([
  {name: "lr_minimal", description: "Can't do much", active_status: nil, sort: nil},
  {name: "lr_future1", description: "", active_status: nil, sort: nil},
  {name: "lr_readonly", description: "", active_status: nil, sort: nil},
  {name: "lr_future2", description: "", active_status: nil, sort: nil},
  {name: "lr_create", description: "", active_status: nil, sort: nil},
  {name: "lr_future3", description: "", active_status: nil, sort: nil},
  {name: "lr_regular", description: "Can edit data, readonly lookup tables", active_status: nil, sort: nil},
  {name: "lr_future4", description: "", active_status: nil, sort: nil},
  {name: "lr_supervisor", description: "Can edit lookup tables", active_status: nil, sort: nil},
  {name: "lr_future5", description: "", active_status: nil, sort: nil},
  {name: "lr_delete", description: "", active_status: nil, sort: nil},
  {name: "lr_future6", description: "", active_status: nil, sort: nil},
  {name: "lr_vip", description: "", active_status: nil, sort: nil},
  {name: "lr_future7", description: "", active_status: nil, sort: nil},
  {name: "lr_special1", description: "", active_status: nil, sort: nil},
  {name: "lr_seller", description: "", active_status: nil, sort: nil},
  {name: "lr_future8", description: "", active_status: nil, sort: nil},
  {name: "lr_admin", description: "Can perform any CRUD operation on any resource", active_status: nil, sort: nil}
])

User.create!([
  {email: "a@e", encrypted_password: "$2a$11$Rny/2qPWCXi/IKhrsz83UOcZbN7q4MktdHvDJKGRjmHMDgPNLa3Vq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, name: "admin", role_id: 9},
  {email: "a", encrypted_password: "$2a$11$531NwP3.SEHvfltEhr7ZCuVQMlb9rjvFZT19npkyOPXvIFhgSNCJG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-05-11 02:37:16", last_sign_in_at: "2017-05-11 02:37:16", current_sign_in_ip: "192.168.88.94", last_sign_in_ip: "192.168.88.94", name: "admin", role_id: 18},
  {email: "r", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, name: "reg", role_id: 7},
  {email: "dgleba", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 31, current_sign_in_at: "2017-06-23 17:16:52", last_sign_in_at: "2017-06-23 17:03:32", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "dgleba", role_id: 9},
  {email: "rzylstra", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2017-06-07 19:10:29", last_sign_in_at: "2017-05-29 14:20:28", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "rzylstra", role_id: 9},
  {email: "rrompen", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-06-09 17:46:38", last_sign_in_at: "2017-06-09 17:46:38", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "", name: "rrompen", role_id: 7}
])
