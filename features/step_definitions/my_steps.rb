Given('I am on devWork home page') do
    visit 'requests'
end

When('I follow {string}') do |string|
    click_link(string)
end

Then('I should be on the Create New Request Page') do
    current_path = URI.parse(current_url).path
    current_path == '/requests/new'
end

Given (/^I am a new, authenticated user$/) do
    email = 'testing@man.net'
    password = 'secretpass'
    User.new(:email => email, :password => password, :password_confirmation => password).save!

    visit '/users/sign_in'
    fill_in "user_email", :with => email
    fill_in "user_password", :with => password
    click_button "Log in"

end

When('I fill in {string} with {string}') do |field, value|
    fill_in(field, :with => value)
end

And('I press {string}') do |string|
    click_button(string)
end

When('I should select {string}') do |string|
    select(string) 
end

Then('I should be on devWork home page') do
    current_path = URI.parse(current_url).path
    current_path == '/'
end

Then('I should see {string}') do |string|
    page.has_content?(string)
end
