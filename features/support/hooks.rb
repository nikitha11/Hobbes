require 'selenium-webdriver'
require 'watir'
# To Run on Selenium #TO DO
 browser =  Selenium::WebDriver.for :chrome
 browser.manage.window.maximize


# To Run on Watir WebDriver 
# browser = Watir::Browser.new :chrome

# browser.driver.manage.window.maximize
# browser.window.maximize
# browser.manage.timeouts.implicit_wait=3
# browser.window.maximize


Before do
  @browser = browser
end

After do |scenario|
    if scenario.failed?
      Dir::mkdir('screenshots') if not File.directory?('screenshots')
      screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
      #browser.save_screenshot(screenshot)
      # Saving Screenshot using Watir
      browser.driver.save_screenshot(screenshot)
      embed screenshot, 'image/png'
    end
end

at_exit do
  browser.close
end