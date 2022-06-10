Feature: Forward Button to restaurants pages
  The button should go to the page of the restaurant clicked

  Scenario Outline: Forward Button redirects you to the page of the restaurant
    Given I expect to be in the main page
    When I tap the button button forward
    Then I expect to be redirected to the <restaurantPage> page

    Examples:
      | restaurantPage |
      | "Grill" |
      | "Cafetaria - Restaurante Feup" |
      | "Restaurante do INEGI" |