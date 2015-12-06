Feature: US2FormValidator

  Background: Given the app is available

  Scenario Outline: verify the git repository title
    Given the form is available
   	When I look for the project title
   	Then I see the correct form title <expectedTitle>

    Examples:
    |expectedTitle|
    |Form validation framework for iOS.|



  Scenario Outline: verify the type of the git repository
    Given the form is available
    When I look for the repository type
    Then I see the correct form repository type <expectedRepositoryType>

    Examples:
      |expectedRepositoryType|
      |Public repository     |



  Scenario Outline: verify the repository entry details
    Given the form is available
    When I click on a repository entry <entryTitle>
    Then I see a repository entry details screen as Full Cycle App Testing Sample
    And I see the correct author name <entryAuthorName>
    And I see the correct email address <entryEmail>
    And I see the correct timestamp for each entry <entryTimestamp>
    And I see the correct repository entry description <entryDescription>

    Examples:
    |entryTitle|entryAuthorName|entryEmail|entryTimestamp|entryDescription|
    |Added analytics|Martin Stolz|martin@ustwo.co.uk|2013-11-29T17:04:08Z|Added analytics|







