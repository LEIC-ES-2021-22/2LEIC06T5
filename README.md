

# Uni Meals Development Report



 ## Business modeling

&nbsp; 



- ### Vision Stament
The best and fastest way for you to have access to all the restaurants and dishes information close to your university campus.

&nbsp; 


- ### Elevator pitch
For students, professors and all members of the FEUP community, who usually eat out at least once a week and prefer a place close to the university, Uni Meals is the best option for you to have access to the weekly menus of all the restaurants/canteens belonging to your campus. There, you will be able to consult all the places where you can eat, the types of dishes available including fish, meat, vegetarian and diet, the menu for each day of the week and the total price of each dishes according to your choice.
 It has interactive interface that will make it easier for you to access all the information and compare each place and each dish to choose the best option for your budget. 

&nbsp; 


## Main Features
 -  Show menus for each day of the week for each restaurant 
 -  Restaurant directions
 -  Filter the dishes - The user may filter the dishes according to what they want to eat
 -  Rating the restaurant and dishes
 -  Option to only show the open restaurants according to the phone hour

&nbsp; 

## Assumptions and dependencies
- Sigarra's Menu information
- Prices label
- Restaurants / Canteens locations

&nbsp;

## Requirements
- ### Use case model
![use_case_model](https://user-images.githubusercontent.com/72468538/160213728-55cf0e87-5cd4-47c5-a410-c250867d0d07.png)

&nbsp; 

- ### Show the menu for each day of the week
    **Actor** - Student;

    **Description** - The students can plan where and which plate they want to eat for each day of the week in advance;

    **Preconditions** - The student wants to see informations about the menus available in different places regarding a day of the week;

    **Postconditions** - **(1)** The student chooses to see information for a specific day of the week; **(2)** The student chooses the menu they want to eat; **(3)** Information is shown.

    **Normal Flow** - **(1)** The system shows the list with each day of the week; **(2)** The student selects the day that they need to see the information for; **(3)** The system shows the menu options; **(4)** The user selects a menu; **(5)** The system shows the places and the plates for each place.

    **Alternative Flows and Exceptions** - The student can go back if they select the wrong menu by mistake.

&nbsp;

- ### See restaurant directions
    **Actor** - Student;

    **Description** - Allows the student to obtain the direction to any of the restaurants 
    that are available in the app and see how much time it takes for them to get there on feet.

    **Preconditions** - The restaurant is in the app. The restaurant has its localization available. If the student wants to know how much time does it take to get there on feet, the GPS must be turned on.

    **Postconditions** - The student gets the exact localization of the restaurant. The system estimates the time it that takes the student to get to the restaurant.

    **Normal Flow** - **(1)** The student accesses the list of restaurants; **(2)** Chooses a restaurant; **(3)** Click in button to see direction / click button to estimate the time it takes to get there on feet.

    **Alternative Flows and Exceptions** - **(1)** The student accesses the list of restaurants; **(2)** Chooses a restaurant; **(3)** Click button to estimate the time it takes to get there on feet; **(4)** Error, the GPS is not turned on.

&nbsp;

- ### Hours when the uni restaurants are open
    **Actor** - Student;

    **Description** - Allows the student to see which restaurants are open in campus.

    **Preconditions** - The student wants to know which restaurants are open, according to the clock on it's phone.

    **Postconditions** - The student chooses to check which restaurants are open; The student opens the app; Only restaurants that are open are shown.

    **Normal Flow** - The student opens the app, the restaurants that are open are shown.

    **Alternative Flows and Exceptions** - The student might want to use a toggle button shown on the menu, that shows all restaurants instead of only the open ones.

&nbsp;

- ### Filter the dishes
    **Actor** - Student;

    **Description** - Allows the student to filter the dishes according to what they want to eat.

    **Preconditions** - The restaurant is in the app; The restaurant has its menu available. 

    **Postconditions** - The student gets the menu of the restaurant.

    **Normal Flow** - **(1)** The student accesses the list of restaurants; **(2)** Chooses a restaurant; **(3)** Clicks the button to see the menu/ chooses a filter for the various options in the menu.

    **Alternative Flows and Exceptions** - **(1)** The student accesses the list of restaurants; **(2)** Chooses a restaurant; **(3)**  The menu is not available.

&nbsp; 


So far, contributions are exclusively made by the initial team, but we hope to open them to the community, in all areas and topics: requirements, technologies, development, experimentation, testing, etc.

Please contact us!

Thank you!



### Members


- **André Miguel Pacheco Morais** - 202005303

- **Anete Medina Pereira** - 202008856

- **Maria Carlota Gomes Ribeiro Matos Leite** - 202005428

- **Maria Eduarda Pacheco Mendes Araújo** - 202004473

- **Miguel Bravo de Almeida e Silva Figueiredo** - 201706105 
