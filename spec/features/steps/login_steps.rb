# frozen_string_literal: true

module LoginSteps
  step 'I have a user account' do
    @password = 'Password123'
    @user = Fabricate(:user, password: @password)
    @user.confirm
  end

  step 'I should be prompted for a login' do
    expect(page).to have_content('Log in')
  end

  step 'I log in' do
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @password
    click_on 'Log in'
  end

  step 'I should be logged into the admin section' do
    expect(current_path).to eq(admin_root_path)
  end
end

RSpec.configure { |c| c.include LoginSteps }
