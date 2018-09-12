require 'rails_helper'

RSpec.describe User, type: :model do
  
  let(:email) { FFaker::Internet.email }
  let(:user) { Fabricate(:user, email: email) }
  
  it 'creates a user' do
    expect(user.email).to eq(email)
  end
  
end
