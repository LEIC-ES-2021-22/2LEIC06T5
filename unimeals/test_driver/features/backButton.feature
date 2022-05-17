Feature: Back Button to the main page
  The button should go back to the main page when pressed

  Scenario Outline: Back Button redirects you to the main page
    Given I am in the <restaurant_page> page
    When I tap the back button
    Then I expect to be redirected to the main page

    Examples:
      | restaurant_page |
      | "Grill" |
      | "Cafetaria - Restaurante Feup" |
      | "Restaurante do INEGI" |
