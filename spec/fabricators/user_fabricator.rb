# frozen_string_literal: true

Fabricator(:user) do
  email { FFaker::Internet.email }
  password 'Password123'
  before_validation { |user, _transients| user.password_confirmation = user.password }
end
