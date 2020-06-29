# frozen_string_literal: true

Given('that you perform the initial tutorial') do
  @screen.tutorial.start_tutorial
end

When('to start registration') do
  @screen.register.confirm_page
end

Then('I should see the fields email, phone number, password') do
  @screen.register.confirm_fields
  @screen.register.register_successfuly
end

Then('then send the valid code') do
  @screen.register.send_token
end

Then('I should see the {string} and the {string} section') do |categories, popular|
  @screen.register.confirm_categories_page(categories, popular)
end

# skip code

Then('not insert code and confirm') do
  expect(@screen.skipcode.confirm_skip_message).to be_truthy
  @screen.skipcode.confirm_skip_code
end

# login without user
When('to click on Skip') do
  @screen.skipcode.skip_first_option
end
