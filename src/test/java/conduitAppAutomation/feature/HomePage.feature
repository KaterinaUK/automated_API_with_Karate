
Feature: Tests for the home page

    Background: Get the home page
    Given url 'https://conduit.productionready.io/api/'

Scenario: Get all tags
    Given path 'tags'
    When method Get
    Then status 200

Scenario: Get 10 articles from the home page
    Given param limit = 10
    Given param offset = 0
    Given path 'articles'
    When method Get
    Then status 200