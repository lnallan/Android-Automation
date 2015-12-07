require 'appium_lib'
require 'rspec'
class AbstractDriver

  @@driver = Appium::Driver

  def initialize(driver)
    @@driver = driver

  end

end

