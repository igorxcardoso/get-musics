require 'selenium-webdriver'
require 'byebug'


def get_name_album(driver, names)
    filter = String.new
    names.split.each do |name|
        filter += "%20#{name}"
    end

    driver.get("https://genius.com/search?q=#{filter}")
end

def get_name_album_for_artist(driver, artist)
    driver.get "https://genius.com/"
    driver.manage.timeouts.implicit_wait = 20

    # Search the artist
    driver.find_element(:tag_name, 'input').send_keys(artist).send_keys(:enter)

    # driver.find_element(:tag_name, 'svg').click
    # driver.find_elements(:tag_name, 'svg')[0].click

    byebug

end

def main
    # Selenium::WebDriver::Chrome.driver_path = 'drivers/chromedriver/chromedriver'
    Selenium::WebDriver::Chrome::Service.driver_path = 'drivers/chromedriver/chromedriver'
    driver = Selenium::WebDriver.for(:chrome)

    # print "Enter the name of the album: "
    # album = 'Swimming' #gets.to_s.chomp
    print "Enter artist name: "
    artist = 'Mac Miller' #gets.to_s.chomp

    get_name_album_for_artist(driver, artist)
end

main
sleep 20



# driver.manage.window.move_to(300, 400)
# driver.quit


# Link: https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
# https://www.selenium.dev/documentation/webdriver/getting_started/first_script/