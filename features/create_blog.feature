# Feature: Create Blog
#   As an author
#   In order to gift my thoughts to the world
#   I want to create a blog

#   Scenario: Create blog page shown
#     Given I am on the home page
#     Then I should see "Welcome"
#     And I should see "My Shiny Weblog!"

#   Scenario: Create blog page not shown when blog created
#     Given the blog is set up
#     When I am on the home page
#     Then I should not see "My Shiny Weblog!"
#     And I should see "Teh Blag"

Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "GG"
    And I fill in "category_description" with "Descrip"
    And I press "Save"
    Then I should see "Foobar"
    Then I should see "Lorem Ipsum"
    Then I should see "GG"
    Then I should see "Descrip"

    Then I follow "Foobar"
    
    
    When I fill in "category_name" with "Foobar1"
    And I fill in "category_keywords" with "Lorem Ipsum1"
    And I fill in "category_permalink" with "GG1"
    And I fill in "category_description" with "Descrip1"
    And I press "Save"
    Then I should see "Foobar1"
    Then I should see "Lorem Ipsum1"
    Then I should see "GG1"
    Then I should see "Descrip1"
