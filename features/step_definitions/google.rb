Given('User open a new browser') do
  visit "about:blank"
  sleep 5
end

When('User go to {string}') do |address|
  visit address
  # falta adicionar método para aceitar cookies.
  sleep 1
end

Then('User must accept cookies') do
  #expect(page).to have_content(:xpath, "/html/body/div[2]/div[3]/div[3]/span/div/div/div/div[3]/div/button[2]")
  click_button("Aceitar tudo")
  sleep 2
end

Then('User must see the Google homepage') do
  expect(page).to have_selector(:xpath, "//img[@alt='Google']")
end

Given('User search for text {string}') do |query|
  page.find(:xpath, "//textarea[@name='q']").set(query)
  sleep 3
  page.find(:xpath, "//textarea[@name='q']").native.send_keys(:return)
  sleep 3
end

When('Page loads') do
  expect(page).to have_selector(:xpath, "//div[@id='result-stats']")
end

Then('User must see {string} related results') do |result|
  expect(page).to have_content(result)
end
