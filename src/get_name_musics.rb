require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path = 'drivers/chromedriver/chromedriver'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://selenium.dev'

driver.manage.window.move_to(300, 400)

# driver.quit


# Link: https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings