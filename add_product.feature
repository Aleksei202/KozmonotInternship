
@wip
Feature: Add product
  Background:
    Given "Product" page downloaded
    When user click "Add new product" button

  @positive
  Scenario Outline: a user open new "<field>"item page
    When user click 'Media' button
    And user click "<field>" button
    Then 'Add "<field>" product' page pops up

 Examples:
    |field|
    |music|
    |film |

  @positive
  Scenario Outline: a user open new "<field>" item page
    When user click "<field>" button
    Then 'Add "<field>" product' page pops up

  Examples:
    |field|
    |cards|
    |shoes|

  @positive @skip
  Scenario Outline: a user add new "<field>" item with all required data
    When a user open new  "<field>" item page
    And enter all required data with '*'
    And click 'Add product' button
    Then 'New "<field>" item was created' warning pops up

  Examples:
    |field|
    |music|
    |film |
    |card |
    |shoes|

  @negative @skip
  Scenario Outline: a user add new "<field>" item without all required data
    When a user open new "<field>" item page
    And And click 'Add product' button
    Then 'This field is required' warnings pops up

  Examples:
    |field|
    |music|
    |film |
    |card |
    |shoes|




