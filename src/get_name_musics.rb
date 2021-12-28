require 'selenium-webdriver'

def get_name(driver, names)
    filter = String.new
    names.split.each do |name|
        filter += "%20#{name}"
    end

    driver.get("https://genius.com/search?q=#{filter}")
end

def main
    Selenium::WebDriver::Chrome.driver_path = 'drivers/chromedriver/chromedriver'
    driver = Selenium::WebDriver.for(:chrome)
    name = 'Self Care'

    get_name(driver, name)
end

main
sleep 20



# driver.manage.window.move_to(300, 400)
# driver.quit


# Link: https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
# https://www.selenium.dev/documentation/webdriver/getting_started/first_script/