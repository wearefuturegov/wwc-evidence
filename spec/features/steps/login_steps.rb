# frozen_string_literal: true

module LoginSteps
  step 'I am logged in' do
    create_user
    log_in
  end

  step 'I have a user account' do
    create_user
  end

  step 'I should be prompted for a login' do
    expect(page).to have_content('Log in')
  end

  step 'I log in' do
    log_in
  end

  step 'I should be logged into the admin section' do
    expect(current_path).to eq(admin_root_path)
  end

  def create_user
    @password = 'Password123'
    @user = Fabricate(:user, password: @password)
    @user.confirm
  end

  def log_in
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @password
    click_on 'Log in'
  end
end

RSpec.configure { |c| c.include LoginSteps }
