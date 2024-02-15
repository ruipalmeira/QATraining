AfterStep do |step|
    sleep WAIT_BETWEEN_STEPS
end

Before do |scenario|
    Capybara.current_session.driver.browser.manage.window.resize_to(1280, 960)
    Capybara.current_session.driver.browser.manage.window.maximize
    FileUtils.rm_rf("#{ROOT_PATH}/results/tmp")
end

After do |scenario|
    attach page.save_screenshot "results/tmp/#{Time.now.to_i}.png" if scenario.failed?
    Capybara.current_session.driver.quit
end
