require 'test_helper'

class UserAccountsTest < ActionDispatch::IntegrationTest

  test 'sign up user' do
    Capybara.current_driver = :poltergeist
    visit("/")
    click_link('Sign Up')
    fill_in('Fullname', with: 'Caleb Francis')
    fill_in('Username', with: 'calebonesimus')
    fill_in('email', with: 'caleb@francis.com')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    click_on('Sign Up')
    assert page.has_content?('Sign Out')
  end

  test 'log in' do
    Capybara.current_driver = :poltergeist
    visit('/')
    click_link("Sign In")
    fill_in('Email', with: 'test@user.com')
    fill_in('Password', with: 'password')
    click_on('Log In!')
    assert page.has_content?('Sign Out')
  end
  
end
