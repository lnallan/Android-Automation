require 'appium_lib'
require 'sauce_whisk'  #- NOT USING IN THIS TEST
require 'rspec'


Before do | scenario |

# Start Android driver
  opts = {
      caps:
          { platformName: :android,
            app: 'D://Lakshman/Mobile Automation Setup/Android/Android/android-sdk/app-test.apk',
            app_package: 'com.ustwo.sample',
            app_activity: 'com.ustwo.sample.CommitListActivity',
            deviceName: 'Lucky A5',
            newCommandTimeout: 60,
            deviceReadyTimeout: 20
          }
  }
  @driver = Appium::Driver.new(opts)
  @driver.start_driver

end

# "after all"
After do | scenario |

  if scenario.passed?
    @driver.screenshot("d:/Lakshman/Mobile Automation Setup/Android/Android/android-sdk/#{scenario.feature.name} - #{scenario.name}_PASS.png")

  else
    @driver.screenshot("d:/Lakshman/Mobile Automation Setup/Android/Android/android-sdk/#{scenario.feature.name} - #{scenario.name}_FAIL.png")

  end

  @driver.driver_quit

end


