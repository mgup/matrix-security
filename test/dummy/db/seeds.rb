MatrixSecurity::User.destroy_all
MatrixSecurity::User.create!(
  id: 1,
  email: 'vshlyaga@acm.org',
  password: '12345678'
)
