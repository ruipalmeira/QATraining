Then('User must see the Google forms page') do
  expect(page).to have_selector(:xpath, "//div[contains(text(), 'PRIME IT AUTOMATED TEST')]")
end

Then ('User must set option to TRUE') do
  page.find(:xpath, "//span[text()='TRUE']").click
  sleep 10
end
