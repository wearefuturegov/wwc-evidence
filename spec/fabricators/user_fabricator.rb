Fabricator(:user) do
  email { FFaker::Internet.email }
  password 'Password123'
  password_confirmation 'Password123'
end
