require 'rspec'
require 'appium_lib'
require 'cucumber'

formPage = FormPage.new(@driver)
repositoryEntryDetailsPage = RepositoryEntryDetailsPage.new(@driver)


Given(/^the form is available$/) do
  formPage.isFormElementVisible().should.equal?('true')
  formPage.getFormTitle().should.equal?('US2FormValidator')
end


When(/^I look for the project title$/) do
  formPage.isTitleElementVisible().should.equal?('true')
end

Then(/^I see the correct form title (.*)$/) do  |title|
  formPage.getCommitListTitle().should.equal?(title)

end

Then(/^I see the correct form repository type (.*)$/) do |repositoryType|
  formPage.getRepositoryType().should.equal?(repositoryType)
end

When(/^I look for the repository type$/) do
  formPage.isRepositoryTypeElementVisible().should.equal?('true')
end

When(/^I click on a repository entry (.*)$/) do |entryItem|
  formPage.clickRepositoryEntryItem(entryItem)
end


Then(/^I see a repository entry details screen as (.*)$/) do |title|
  repositoryEntryDetailsPage.getTitle().should.equal?(title)
end

And(/^I see the correct author name (.*)$/) do|author|
  repositoryEntryDetailsPage.getAuthor.should.equal?(author)
end

And(/^I see the correct email address (.*)$/) do |email|
  repositoryEntryDetailsPage.getEmail.should.equal?(email)
end

And(/^I see the correct timestamp for each entry (.*)Z$/) do |timestamp|
  repositoryEntryDetailsPage.getTimestamp.should.equal?(timestamp)
end

And(/^I see the correct repository entry description (.*)$/) do |desc|
  repositoryEntryDetailsPage.getDescription.should.equal?(desc)
end