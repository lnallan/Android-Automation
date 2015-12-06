def run_tests(deviceName, platformName, platformVersion, app)
  system("deviceName=\"#{deviceName}\" platformName=\"#{platformName}\" platformVersion=\"#{platformVersion}\" app=\"#{app}\" parallel_cucumber features -n 20")
end

task :Galaxy_S5_Device do
  run_tests('Samsung Galaxy S5 Device', 'Android', '4.4', '<apk path>')
end

task :Galaxy_S4_Emulator do
  run_tests('Samsung Galaxy S4 Emulator', 'Android', '4.4', '<apk path>')
end

task :MyTestDevice do
  run_tests('Lucky A5', 'Android', '5.0', 'D://Lakshman/Mobile Automation Setup/Android/Android/android-sdk/app-test.apk')
end

multitask :test_sauce => [
    #:Galaxy_S5_Device,
    #:Galaxy_S4_Emulator
    :MyTestDevice

  ] do
    puts 'Running automation'
end
