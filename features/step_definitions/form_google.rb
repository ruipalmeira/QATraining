# frozen_string_literal: true
Then('User must see the google forms page') do
  expect(page).to have_selector(:xpath, "//div[contains(text(), 'PRIME IT AUTOMATED TEST')]")
end

Then('User must set option to TRUE') do
  page.find(:xpath, "//span[text()='TRUE']").click
end

Then('User must fill in text input with {string}') do |argument|
  page.find(:xpath, "(//input[@type='text'])[1]").set(argument)
  sleep 3
end
And('User must check value {string}') do |value|
  page.find(:xpath, "//div[@data-answer-value='#{value}']").click
  sleep 3
end

Then('User set date as {string}') do |date|
  dateArray = date.split("/")
  index = 2
  dateArray.each do |value|
    page.find(:xpath, "(//input[@type='text'])[#{index}]").set(value)
  index = index + 1
  end
end

Then('User click to submit form') do
  page.find(:xpath, "//span[text()='Enviar']").click
end
