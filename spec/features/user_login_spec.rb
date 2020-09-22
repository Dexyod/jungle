require 'rails_helper'

RSpec.feature "UserLogins", type: :feature do
  
  before :each do
    @email = Faker::Internet.email
    @password = Faker::Internet.password
    @user = User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: @email,
      password: @password,
      password_confirmation: @password
    )
  end

  scenario 'they are taken to the root page' do
    visit login_path

    fill_in 'email', with: @email
    fill_in 'password', with: @password
    click_on 'Submit'

    expect(page).to have_current_path(root_path)
    expect(page).to have_content('Logout')
  end
end
