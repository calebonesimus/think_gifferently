require 'test_helper'

class GifUploadTest < ActionDispatch::IntegrationTest
  test "photo upload" do
    Capybara.current_driver = :poltergeist
    visit('/')
    original_count = page.all(:css, '#gifGrid .col-md-3').length

    # Create new user to make the gif
    click_link('Sign Up')
    fill_in('Fullname', with: 'Caleb Francis')
    fill_in('Username', with: 'caleb')
    fill_in('Email', with: 'caleb@caleb.com')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    click_on('Create User')
    assert page.has_content?('Sign Out')

    #  Upload a gif from my machine
    click_link('New Gif')
    attach_file('Local gif', '/Users/Caleb/Downloads/giphy.gif')
    click_on('Create Gif')
    visit('/')
    
    # Sign out the user
    click_link('Sign Out')
    assert page.has_content?('Sign In')

    assert_equal original_count + 1, page.all(:css, '#gifGrid').length

  end
end
