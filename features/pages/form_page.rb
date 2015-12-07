require 'rspec'

class FormPage < BasePage

  def initialize(driver)
    super(driver)
  end

  def getCommitListTitle
    return @@driver.find_element(:id, 'commit_list_textview_title').text

  end

  def isFormElementVisible
    @form = @@driver.find_element(:id,'action_bar')
    return @form.displayed?
  end

  def isTitleElementVisible
    return @@driver.find_element(:id,'commit_list_textview_title').displayed?
  end

  def getFormTitle
    return @@driver.find_element(:id, 'action_bar').find_element(:class,'android.widget.TextView').text
  end

  def getRepositoryType
    return @@driver.find_element(:class,'android.widget.ImageView').attribute('name')
  end

  def isRepositoryTypeElementVisible
    return @@driver.find_element(:id,'commit_list_imageview_privacy_state').displayed?
  end

  def clickRepositoryEntryItem(entryItem)
    @@driver.find_element(:xpath,'//*[@text="Added analytics"]/following-sibling::node').click
  end
end
