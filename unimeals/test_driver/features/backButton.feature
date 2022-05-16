Feature: Back Button
  The button should go back to the main page when pressed


  Scenario Outline: Back Button redirects you to the main page
    Given I expect the "restaurantPage" page to be "widget.restaurant.name"
    When I tap the button

    Examples:



Feature: Forward Button
  The button should go to the page of the card that i clicked

  Scenario Outline: Forward Button redirects you to the page of the restaurant
    Given I expect to be in the "main_page"
    When I tap the button "button_forward"
    Then I expect to be redirected to the <restaurantPage>

    Examples:
      | restaurantPage |
      | "Grill" |
      | "Cafetaria - Restaurante Feup" |
      | "Restaurante do INEGI" |


