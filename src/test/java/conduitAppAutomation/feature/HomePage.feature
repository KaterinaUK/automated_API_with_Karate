
Feature: Tests for the home page

Background: Get the home page
    Given url 'https://conduit.productionready.io/api/'

Scenario: Get all tags
    Given path 'tags'
    When method Get
    Then status 200
    And match response.tags contains ['cupiditate', 'qui']
    And match response.tags !contains 'dogs'
    And match each response.tags == '#string'

Scenario: Get 10 articles from the home page
    Given param limit = 10
    Given param offset = 0
    Given path 'articles'
    When method Get
    Then status 200
    And match response.articles[0].title == '#string'
    And match response.articles == '#[10]'
    And match response.articlesCount == 197