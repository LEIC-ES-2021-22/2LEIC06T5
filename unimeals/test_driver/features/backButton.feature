Feature: Back Button
  The button should go back to the main page when pressed

  # Don't know how to access the back button because its generated automatically

  Scenario Outline: Back Button redirects you to the main page
    Given I expect the "restaurantPage" page to be "widget.restaurant.name"
    When I tap the button

    Examples:
      ||

