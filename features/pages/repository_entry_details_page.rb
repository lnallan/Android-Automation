require 'rspec'
require 'appium_lib'

class RepositoryEntryDetailsPage < BasePage

  def initialize(driver)
    super(driver)
  end

  def getTitle()
    return @@driver.findElement(by.xpath,'//TextView').text
  end


  def getAuthor()
    return @@driver.findElement(by.id,'commit_detail_textview_name').text
  end

  def getEmail()
    return @@driver.findElement(by.id,'commit_detail_textview_email').text
  end

  def getDescription()
    return @@driver.findElement(by.id,'commit_detail_textview_message').text
  end

  def getTimestamp()
    return @@driver.findElement(by.id,'commit_detail_textview_date').text
  end
end