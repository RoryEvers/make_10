# Terminal Application 

## Referenced Sources

http://rubyquiz.com/quiz7.html

## Source Control Repository

https://github.com/RoryEvers/make_10

## Software Development Plan

### Purpose & Scope (500 words)

- **describe at a high level what the application will do**

This application will enhance the experience of people playing the game "Make 10". "Make 10" is played by taking the four digit carriage number found on Sydney trains and using the order of operations to find ways to add, minus etc to get a total of 10. Some numbers are easier than others, and some are impossible. Some numbers have multiple ways of solving them. 

- **identify the problem it will solve and explain why you are developing it**

Although it is simple to check whether an equation equals 10 or not, it is more difficult to find solutions when the player is stuck. When I was in high school I used to play this game with my friends, and even made a simple program that could find solutions in a very inelegant way, by iterating through thousands of lines of written code to try every combination. I would like to create a more elegant solution that could still make use of a computer's ability to quickly try thousands of combinations. 

**This app would ideally have two main features and a variety of smaller features that would improve the user experience** 

**1) the ability to find known solutions for a particular pattern**

**2) play a game where the program provides solvable patterns of different difficulties (judged by quantity of operations and possibly also number of possible solutions)**

- **identify the target audience**

The target audience will mostly be high school age children who are interested in maths games and competing with their friends, but would likely include other commuters. 

- **explain how a member of the target audience will use it**

For the purposes of this assignment the app would exist only as a .exe file and so could be used on laptop computers when students get to school. This program exists to help the individual player to train on solvable patterns of four digit numbers, and also to be able to find solutions to patterns they were not able to solve on the train.

### Features (100words x 3 at least)

- **describe each feature**
- **use of variables and the concept of variable scope**
- **loops and conditional control structures**
- **error handling**



This app will be made in phases with increasing functionality as time allows. 

#### Phase One 

To build the minimum viable product. A calculator that can find and print a single solution to a 4 digit number pattern and then end without finding all possible solutions, using only single digit numbers, and would use modules to avoid repetitious code. This would involve several features:

##### Display a welcome message

##### Display instructions

##### Give users the choice to play

##### Have the user input 4 numbers

##### Calculate how  to solve the pattern

##### Print the solution for the user if there is one, or display a message that no solution was found, give the choice to continue



#### Phase Two

##### Expanded capability to solve patterns by also trialling combinations with two digit numbers

##### Print how many combinations were tested before finding a solution



#### Phase Three

##### All patterns from 0000 to 9999 solved for a single solution and stored in external file

##### User can select to play a game or use the calculator

If user selects game a single random pattern with a known solution is presented to the user 

User may attempt to solve the pattern by inputting valid characters and symbols

Calculate whether their attempt solves the pattern

Print whether their attempt solves the pattern

Offer the chance to play again or use the calculator









Depending how much progress I make, it may just have the ability to check people's answers, but ideally I have some methods that can go and find which of the 10000 numbers (0000-9999) are possible to solve, and then divide them based on the number of operations required (total of "+", total of "**") and have 3 tiers of difficulty.



I would probably have the list of mathematical symbols in an array, and each of the four numbers would be given a value (a,b,c,d). There would be 2-3 spaces between each value, and all symbols would be iterated through in a loop until the thousands have been tried and it found any combinations that = 10
the 2-3 spaces are for combinations like *(- etc
the start and end only need 2 but the middle ones need 3
the start will never have ) for example as well



to save processing power it would be ideal to have all known solutions in a saved file instead of running millions of operations every time the program is turned on





Phase 1: I would just be making a loop that solves a 4 digit number that the user inputs (.e.g 1234) The program would loop through every possibility for how to add, multiply etc the four numbers in order, and then print all solutions. (e.g. 1+2+3+4 = 10, (1 x 2 x 3) +4 = 10 etc) Phase 2 If there is still time I would include the ability to make 2 digit numbers out of user input as well (e.g. 1000 could become 10 + 0 + 0 = 10) Phase 3 If there is still a lot of time, I would solve all 10000 numbers and assign each of them a difficulty (e.g. Easy just requires + and - to solve, medium requires everything except exponentials, Hard could require anything, Psychotic is for numbers deemed unsolvable by current equations).  The user could select their difficulty and get assigned patterns until they decide to increase their difficulty, they would also be assigned a streak length.  The program would just have to know which numbers were which difficulty beforehand, it wouldnt need all known solutions saved in a file like I said yesterday.

No. It would use the calculator to solve them live when requested by the user



But if I were to have a full game with difficulty levels, it would require more forethought to avoid users getting unsolvable patterns



but for this assignment I can probably only do Phase 1



maybe phase 2

Yeah I would just work to have a calculator algorithm that can make 10 out of user input and return "no known solutions" or something if it can't solve There will be all sorts of errors to avoid with the calculator, such as brackets that aren't closed, nil, strings not integers etc, dividing by zero



test examples 

```
6140
7544
5555
1010
```

### User Interaction and Flow

The user will be given the option of reading how to use the application immediately upon opening. Instructions detail how the game works and which symbols are available. 

The gem TTY Prompt will be used to limit how users can interact with features. The main menu has strictly three options and users only need to use the arrow and enter keys to make a selection. TTY Prompt is also used when users are called to input numbers, to ensure they do not input invalid characters.

If not for TTY prompt and other solutions such as incorporating functions and conditional statements for error handling there would likely be errors resulting from users including letters, negative numbers numbers and symbols that are not allowed for valid solutions and also input that is the wrong length of characters.  

The user flow throughout the application is as follows.

![User interaction flowchart - Phase 1](.\docs\Make_10 Phase 1.jpeg)

### Control Flow

Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.
- 

## Implementation Plan

- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan

> Your checklists for each feature should have at least 5 items.

Building the terminal application according to the software development plan required creating modular code, utilising test driven development, and creating minimum viable products for each feature. Adding gems was done at appropriate times to improve functionality, reduce errors and enhance the appearance of the application. The  detailed plan for implementing each feature is detailed below, but the core strategy was to build a minimum viable product formed by modular features built in order of priority starting with a simple calculator and then the welcome message and instructions and user input, followed by a more advanced calculator and more advanced user input and then gems to improve the user experience last. 

Trello was used to aid in planning and prioritising, and a user story, checklist and due date were created for each feature. Trello could have been utilised more effectively with better knowledge of the options available, and in future projects I will connect features to cards more strategically and use Trello to create sub goals for other parts of of the project such as design. The Trello board is available publicly: https://trello.com/b/QD4AGjA6/user-story-mapping-template

Here is a screenshot of the Trello board completed for Phase 1, with Phase 2 and 3 ready to be populated in future. ![Screen shot of completed Trello](.\docs\Trello_phases.PNG)

#### Test Driven Development

Features could be tested in the process of building. Many display simple text.  The calculator operates using methods for each operation (detailed below), and these can be tested easily as well. Testing is recorded in a separate spreadsheet (Manual_Testing_Spreadsheet.pdf ) that has been included in the docs folder. All tests passed or failed when expected to. 

#### Calculator methods

All versions of the calculator utilise the same basic methods of addition, subtraction, multiplication, division and exponentiation and these are created within an Operations class. These methods are combined together into a new method, which allows the calculator to call all operations simultaneously. 

#### Welcome

The welcome message method exists within the Welcome class and was designed to be brief and functional. It was implemented to display ASCII art using the gem Artii (see below) and displays a short message explaining the program, before the menu appears. 

#### Main Menu

The main menu provides three options for the user, to use the calculator, to read instructions or to quit the program. Options are controlled using the gem TTY Prompt which was used widely throughout the application to avoid errors and enhance the user experience. 

#### Instructions

The Instructions method resides within the welcome class and is called from the menu. Users can see  the rules of the game and are then presented with the menu again.

#### Gem: TTY Prompt

TTY prompt was included to control the menu function and also to take and control user input for the calculator. TTY prompt was a graceful solution to error handling by limiting user input to only valid selections on the menu and to valid characters for inputting numbers into the calculator.

#### Calculator Version 1

The first version of the calculator utilised the basic calculation methods that reside within the Operations class. The logic flow was to take four digits of input, and to run calculation using two at a time, which would generate a running total, until all four digits were used, at which point if the running total was equal to the goal (10) the calculator would print the equation utilising an array of strings with mathematical operators to insert. 

This calculator worked but was not DRY and was very inefficiently coded. The basic structure of utilising running totals and an array of operations and an array of digits was further utilised in version 2.

#### Calculator Version 2

Several attempts were made to improve the calculator. Investigations into recursion proved exciting but unachievable within the time frame provided. A stable version 2 came from utilising the core concepts of version 1, but redesigned as a single loop that would call itself after each calculation. This required a fundamental change to the way calculations were handled, by calling a single method to perform all mathematical operations at once, by passing four arguments in order to generate a string  once solutions were found to be able to print later, and to utilise a separate method to handle checking whether the running total equalled the goal. Version 2 also used terminal table to format the printing of results. A slight update to version 2 was found late in the development which removed the need to start with a running total of 0 (which required an extra loop of calculations e.g. 0 + 1 + 2 + 3 + 4 = 10), and instead to pass the first digit as the initial running total. 

Future versions will utilise recursion and remove the need for iteration. A core feature that will be required to completely solve the problem is a method that can generate valid patterns of parentheses, and can then call the calculator for each possibility, which will return the solution for printing, but with parentheses as required. This will require a calculator capable of solving patterns of 2 and 3 digits as necessary. This will be covered in phase 2 development.

Future versions must also keep a tally of solutions found in order to let users know when there are no solutions found by printing the message "No solutions have been found". This tally will be useful for phase 3 plans.

#### Gem: Artii

Once the calculator was working and integrated into the other features the focus could switch to aesthetics. The welcome message utilises the gem Artii to display ascii text "Make 10". 

#### Gem: Terminal Table

Solutions found by the calculator are pushed into a table format to aid legibility and add flourish. Future versions could attempt to style solutions in more extravagant ways including colour and movement. 

#### Gem: Colorize

The gem Colorize was implemented for the logo "Make 10" in the welcome message and for headings on the instructions and get digits methods to let users know which feature they are using and improve the design of the site.

#### Error Handling

Error handling was considered throughout the planning and development phase. There are two main areas where there was a risk of error: user input and calculation. The most graceful solutions tended to be the ones that avoided the possibility of errors entirely in the design phase, but sometimes great lengths were gone to in order to ensure a fully functional application.

The user is capable of making an input on the menu to choose what feature they want to use, and they are also required to input numbers to be calculated. Their ability to choose was limited to valid inputs using TTY Prompt, which was implemented widely across the application. For menus, they have three options which can be selected using the arrow keys and enter, and this menu is displayed again after viewing the instructions or using the calculator. 

Handling potential errors for inputting numbers required much more consideration, as hardcoding options in the same way as was done for the menu would make for a poor user experience. Instead, TTY Prompt was used to limit input to valid characters, a single number between 1000 and 9999, and to make sure that the user could input only numbers and not letters or symbols. As the user input would be a string, TTY Prompt was used to convert this number to an integer. Next followed a sequence of coded conditional statements to obtain input in a usable format. To ensure that the input was not a negative number, a manual rescue was created to inform the user that only positive numbers were valid, and this occurs around the method for splitting the single number into individual digits.  Next, conditionals were used to ensure the length of the resulting input was exactly four digits.  Once there are exactly four positive integers, they can be converted into floats to ensure accurate calculation where decimals are often essential for correct solutions. These floats are converted back into integers when it comes time to print solutions. 

Each operation used for calculation was tested manually and using RSPEC. The design of the main calculator made it unnecessary to go to efforts to avoid division by zero, as for occasions where division by zero occurs, it naturally cannot result in a solution that equals 10 and the loop continues on down paths where no division by zero occurred. 

#### Bash Scripts & Command line 

Once the working application was completed two bash scripts were created. 

To start from the usual welcome, make_10.sh can be used by inputting the following in the terminal if you are in the "src" directory:

```
./make_10.sh
```

To start straight from the calculator, calculator.sh can be used by inputting the following in the terminal if you are in the "src" directory:

```
./calculator.sh
```

It is also possible to go straight to parts of the applications using command line without bash scripts. To go straight to the calculator and avoid the welcome screen you can use:

```
ruby menu.rb calculator
```

Or to go straight to the instructions page use:

```
ruby menu.rb instructions
```

### Help Documentation

To use this application your computer must have Ruby installed. Follow the instructions here to [download and install](https://www.ruby-lang.org/en/documentation/installation/). 

Open the "src" folder, where you can view all the files necessary for this application to run without error.

This application makes use of several gems to enhance functionality and appearance, and will require you to install bundler first which can then be used to install the other gems. Run the following two commands in terminal:

```
gem install bundler
```

```
bundle install 
```



Once you have the gems, it is time to calculate! 

Ensure you are in the "src" folder, and then open the application using terminal by inputting:

```
ruby index.rb
```

It is also possible to go straight to the calculator and avoid the welcome screen using:

```
ruby menu.rb calculator
```

Or to go straight to the instructions page using 

```
ruby menu.rb instructions
```



