

# Uni Meals Development Report

* Business modeling 
  * [Product Vision](#product-vision)
  * [Elevator Pitch](#elevator-pitch)
* Requirements
  * [Use Case Diagram](#use-case-diagram)
  * [Domain model](#domain-model)
* Architecture and Design
  * [Logical architecture](#logical-architecture)
  * [Physical architecture](#physical-architecture)

 ## Business modeling

&nbsp; 

## Product Vision
For any student who likes to eat near Feup, UniMeals is the best app to help you find the top places to have a meal, showing you the best options of dishes and menus for the cheapest prices, comparing all options available for you and even showing you reliable ratings for each place. Also, unlike sigarra's website UniMeals offers an easy to use, friendly interactive interface with filters customization and directions to the locations of all the places available. Our product, aims to organize all the information in one place symplifing access to every information needed by the students.


&nbsp; 


## Elevator Pitch
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
### Use case diagram
![](https://github.com/LEIC-ES-2021-22/2LEIC06T5/blob/main/images/useCaseDiagram.png)

&nbsp; 

- ### See menus for each day of the week
  |||
  | --- | --- |
  | *Name* | See menus for each day of the week |
  | *Actor* |  Student | 
  | *Description* | The student can plan where and which plate he wants to eat for each day of the week in advance. |
  | *Preconditions* | - The student is authenticated in the app. <br> - The restaurant has it's menus available.|
  | *Postconditions* | - The student sees information about the menu in that week. |
  | *Normal flow* | 1. The student access the app.<br> 2. The system shows the list of restaurants available in the app.<br> 3. The student chooses a restaurant.<br> 4. The student chooses the "see menus" option on the restaurant page.<br> 5. The system shows menu for each day of the week in that restaurant. |
  | *Alternative flows and exceptions* | 1. In step 2, the student can go to the navbar and choose to see menu of the week for all restaurants.|

&nbsp;

- ### See restaurant location
  |||
  | --- | --- |
  | *Name* | See restaurant location |
  | *Actor* |  Student | 
  | *Description* | Allows the student to obtain the location of any restaurants available in the app and see how much time it takes for them to get there. |
  | *Preconditions* | - The restaurant is in the app. <br> - The restaurant has its location available. <br> - If the student wants to know how much time does it take to get there on feet, the GPS must be turned on.|
  | *Postconditions* | - The student gets the exact location of the restaurant. <br> - The system estimates the time it that takes the student to get to the restaurant.|
  | *Normal flow* | 1. The student accesses the list of restaurants <br> 2. The student chooses a restaurant.<br> 3. In the restaurant page, the student click on the button to see restaurant location.|
  | *Alternative flows and exceptions* | 1. In step 3, the student click on button to estimate time it takes to get there on feet.|

&nbsp;

- ### Filter the uni restaurants open at the time the app is being used.

  |||
  | --- | --- |
  | *Name* | Filter the uni restaurants open at the time the app is being used. |
  | *Actor* |  Student | 
  | *Description* | Allows the student to see which restaurants are open in the campus, according to the clock on it's phone. |
  | *Preconditions* | - The system has access to the phone current time. <br> - The system has access to the restaurant's opening time.|
  | *Postconditions* | - Only restaurants that are open are shown in the main page. <br> - No restaurants are shown on the main page if none of them is open at that time.|
  | *Normal flow* | 1. The student accesses the main page<br> 2. The student opens the navbar.<br> 3. In the navbar, the student chooses the option "Filtros". <br> 4. In the filters page, the student chooses to see only open restaurants at the time.|
  | *Alternative flows and exceptions* | 1. In step 4, the student can disable this option by turning of the switch for this option.|

&nbsp;

- ### Filter the dishes
  |||
  | --- | --- |
  | *Name* | Filter the dishes. |
  | *Actor* |  Student | 
  | *Description* | Allows the student to filter the dishes according to what they want to eat. |
  | *Preconditions* | - The restaurant has its menu available. <br> - The type of dish that the student wants to eat is part of the menu of the restaurant.|
  | *Postconditions* | - The student gets the menu of the restaurant with the dishes filtered according to what they chose.|
  | *Normal flow* | 1. The student accesses the main page<br> 2. The student opens the navbar.<br> 3. In the navbar, the student chooses the option "Filtros". <br> 4. In the filters page, the student chooses what kind of dish he wants to be shown in the menus.|
  | *Alternative flows and exceptions* | 1. In step 4, the student choses a option that is not available in certain restaurants. <br> 5. The type of dish that the student chose is only shown in the restaurants that have this dish. |
    
&nbsp;

- ### Give rating to restaurants and dishes
  |||
  | --- | --- |
  | *Name* | Give rating to restaurants and dishes |
  | *Actor* |  Student | 
  | *Description* | Allows the student to give rating to a restaurant or a dish. |
  | *Preconditions* | - The option to give rating to a restaurant or a dish is available in the app.|
  | *Postconditions* | - The student rates the restaurant choosing the *like* or *dislike* button.|
  | *Normal flow* | 1. The student accesses the main page<br> 2. The student chooses a restaurant.<br> 3. In the restaurant page, the student clicks the *like* or *dislike* to give a positive or a negative rating to the restaurant. |
  | *Alternative flows and exceptions* | 1. In step 3, the student chooses the "see menus" option in the restaurant page. <br> 2. The student chooses a dish. <br> 3. In the chosen dish section, the student click the *like* or *dislike* to give a positive or a negative rating to the dish. |

&nbsp; 

## Domain Model

![](https://github.com/LEIC-ES-2021-22/2LEIC06T5/blob/main/images/domainModel.png)


## Architecture and Design

### Logical architecture

![](https://github.com/LEIC-ES-2021-22/2LEIC06T5/blob/main/images/logicalArquitecture.png)

Our logical architecture will follow the Model-View-Controller architeture, since it is recommended to organize projects like this one that uses a GUI. This pattern separates presentation, interaction and the application data in three logical different parts that interact with each other.

The first one is the Model which contains all the application data, such as informations about the restaurants, menus, prices and ratings.
The View displays the information from the Model as an interface to the users and sends information from the user to the Controller.
The Controller is responsible by the logic of the system and requests informations from the model and sends the necessary data to the view.

&nbsp;

### Physical architecture
![](https://github.com/LEIC-ES-2021-22/2LEIC06T5/blob/main/images/physicalArquitecture2.png)


In our app's physical architecture 3 entities are featured: the FEUP server with the sigarra's database that contains almost all the information required by the app; the app itself, which the user interacts with; and the backend with the implementation of all features present in the app and all the information that can be accessed by the users. 
Regarding technologies, we used Flutter (with the Dart programming language) for the frontend and we plan to use sqlite3 for the backend because it is the database management system that seems more appropriated and that we are most familiar with.

&nbsp;

So far, contributions are exclusively made by the initial team, but we hope to open them to the community, in all areas and topics: requirements, technologies, development, experimentation, testing, etc.

Please contact us!

Thank you!



### Members

| Name                                           | Number      | Git                                             |
| ---                                            | ---         | ---                                             |
| **André Miguel Pacheco Morais**                |  202005303  | [Andrekt02](https://github.com/Andrekt02)       |
| **Anete Medina Pereira**                       |  202008856  | [anetep](https://github.com/anetep)             |
| **Maria Carlota Gomes Ribeiro Matos Leite**    |  202005428  | [carlotaleite](https://github.com/carlotaleite) |
| **Maria Eduarda Pacheco Mendes Araújo**        |  202004473  | [Eduarda34](https://github.com/Eduarda34)       |
| **Miguel Bravo de Almeida e Silva Figueiredo** |  201706105  | [grindfever](https://github.com/grindfever)     |
