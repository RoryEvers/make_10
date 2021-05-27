# Terminal Application 

## Referenced Sources

When researching possibilities for more advanced calculators using recursion I learned important lessons from the following projects that created applications to find solutions to the numbers game on the television show Countdown. No code was taken from them, only inspiration. 

http://rubyquiz.com/quiz7.html

https://www.codeproject.com/Articles/740035/Countdown-Number-Puzzle-Solver

## Source Control Repository

https://github.com/RoryEvers/make_10

## Software Development Plan

### Purpose & Scope 

This application will enhance the experience of people playing the game "Make 10". "Make 10" is played using the four digit carriage number found on Sydney trains. Players try different equations made using the four digits, combined with valid mathematical operations (addition, subtraction, division, multiplication, exponentiation and parentheses) in order to find ways to reach a total of 10. Some patterns are easier than others, and some are impossible. Some numbers have multiple ways of solving them. It is also possible to use two digit numbers, but players are not allowed to rearrange the numbers or use decimal points, square roots, logarithms or any other mathematical operation. 

Some test examples of how the game is played:

```
6140 => ( 6 * 1 ) + 4 + 0 = 10
7544 => 7 - 5 + 4 + 4 = 10
5555 => 5 + 5 - 5 + 5 = 10
1010 => 10 * 1 + 0 = 10
```

It can be frustrating to be unable to find a solution and remain unsure whether one exists. This application can quickly solve for many solutions, and with future versions will be able to solve for all solutions. 

Although it is simple to check whether an equation equals 10 or not, it is more difficult to calculate all possible solutions. I used to play this game with my friends when I was in high school, and even made a simple program that could find solutions in a very inelegant way, by iterating through thousands of lines of written code to try every combination. I would like to create a more elegant solution that could still make use of a computer's ability to quickly try thousands of combinations. 

The target audience will mostly be high school age children who are interested in maths games and competing with their friends, but would likely include other commuters. 

For the purposes of this assignment the app would be used by opening ruby or bash files, and so could be used on laptop computers when students get to school.  A better future version would be a mobile application to solve patterns and help the individual player to train on solvable patterns of four digit numbers while on the train.

### Features 

This app would ideally have two main features and a variety of smaller features that would improve the user experience.

The main feature is a calculator that can take valid user inputs of 4 digits and calculate all possible combinations of mathematical operators, before returning all found solutions to the user. Multiple versions will be required, starting with a minimum viable product and moving towards a more complex and robust version that can solve for a variety of patterns involving parentheses. 

More advanced calculators will require more variables. By keeping all calculator functions within a single class (Operations), variables will be more easily controlled. User digits are input using a method within the menu class, which are then converted into a usable format or deemed invalid, before the calculate method is called from menu, by first creating a new variable that calls the operations class. Calculator v2 duplicates and updates an array to store all operations that have been performed in order to be able to print solutions once the calculator has finished operating. 

Error handling for the calculator is controlled by limiting user input to valid characters by utilising TTY Prompt, and by reusing smaller methods that can be tested individually. Error handling is discussed in much more depth in the implementation plan.

In the future the second main feature would be a game where the user is presented with solvable patterns of numbers, and then has the opportunity to devise solutions and input them for confirmation. This feature must wait until a more advanced calculator has been built. 

The other features are implemented to better enable the user to effectively use the application. The user is first presented with the welcome message, which contains a sentence letting them know the application is running and also a main heading with ascii art to enhance the experience. Underneath the welcome is the menu feature. The menu presents three options to the user, and if they choose to read instructions or use the calculator then their respective methods are called from elsewhere within the welcome class. The instructions are available to be read and are stored as a method to be called from the menu.

A Boolean variable is created to determine whether a user wants to quit the application or not, and if the user chooses quit from the menu they are shown a one sentence message and then the application ends. A loop is created to show the menu again after each calculation is performed or the instructions are shown. 

This app will be made in phases with increasing functionality as time allows. 

#### Phase One 

To build the minimum viable product. A calculator that can find and print a single solution to a 4 digit number pattern and then end without finding all possible solutions, using only single digit numbers, and would use modules to avoid repetitious code. 

**Display a welcome message**

**Display the menu**

**Give users the choice to use the calculator, read instructions or quit**

**Have the user input 4 numbers**

**Calculate how  to solve the pattern**

**Print the solution for the user if there is one, or display a message that no solution was found**

**Present the menu again until users choose quit**

All features were implemented successfully for phase one except for the ability to print that no solution was found, instead the user is just returned to the menu to choose again. This must be implemented in future versions as part of a tally that records found solutions for every pattern.

#### Phase Two

**Expanded capability to solve patterns by also trialling combinations with two digit numbers**

**A method to take the four digit input and generate all possible combination of parentheses, and then to call the calculator for each of them.** 

#### Phase Three

**All possible patterns for every number solved, and tally of solutions per number stored in external file**

**User can select to play a game where they are given random solvable patterns and the chance to solve them or view hints**

If the user selects game a single random pattern with a known solution is presented to the user 

User may attempt to solve the pattern by inputting valid characters and symbols

Calculate whether their attempt solves the pattern

Print whether their attempt solves the pattern

Offer the chance to play again or use the calculator

Divide patterns into difficulty levels



### User Interaction and Flow

The user will be given the option of reading how to use the application immediately upon opening. Instructions detail how the game works and which symbols are available. 

The gem TTY Prompt will be used to limit how users can interact with features. The main menu has strictly three options and users only need to use the arrow and enter keys to make a selection. TTY Prompt is also used when users are called to input numbers, to ensure they do not input invalid characters.

If not for TTY prompt and other solutions such as functions and conditional statements for error handling, there would likely be errors resulting from user input including letters, negative numbers and symbols that are not allowed for valid solutions, and also for input that is the wrong length of characters.  

The user flow throughout the application is as follows.

![User interaction flowchart - Phase 1](.\docs\Make_10_Phase_1.jpeg)

### Control Flow

In addition to the flowchart of the whole application shown above which clearly shows the repeating loop returning the user to the main menu, the workings of calculator v2 are shown in the diagram below. 

![Control flow of Calculator V2](.\docs\Calculator_Logic_Flow.png)

## Implementation Plan

Building the terminal application according to the software development plan required creating modular code, utilising test driven development, and creating minimum viable products for each feature. Adding gems was done at appropriate times to improve functionality, reduce errors and enhance the appearance of the application. The  detailed plan for implementing each feature is detailed below, but the core strategy was to build a minimum viable product formed by modular features built in order of priority starting with a simple calculator and then the welcome message and instructions and user input, followed by a more advanced calculator and more advanced user input and then gems to improve the user experience last. 

Trello was used to aid in planning and prioritising, and a user story, checklist and due date were created for each feature. Trello could have been utilised more effectively with better knowledge of the options available, and in future projects I will connect features to cards more strategically and use Trello to create sub goals for other parts of of the project such as design. The Trello board is available publicly: https://trello.com/b/QD4AGjA6/user-story-mapping-template

Here is a screenshot of the Trello board completed for Phase 1, with Phase 2 and 3 ready to be populated in future. ![Screen shot of completed Trello](.\docs\Trello_phases.PNG)

#### Test Driven Development

Features could be tested in the process of building. Many display simple text.  The calculator operates using methods for each operation (detailed below), and these can be tested easily as well. Testing is recorded in a separate spreadsheet. that has been included in the docs folder. All tests passed or failed when expected to. 

[Manual Testing Spreadsheet]: .\docs\Manual_Testing_Spreadsheet.pdf

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

To use this application you must have a computer capable of running ruby, and you must have Ruby installed. Follow the instructions here to [download and install](https://www.ruby-lang.org/en/documentation/installation/). 

Open the "src" folder contained in the folder where this README is located. This is where you can view all the files necessary for this application to run without error.

This application makes use of several gems to enhance functionality and appearance, and will require you to install bundler first which can then be used to install the other gems. 
Gem dependencies: artii, colorize (~> 0.8.1), rspec (~> 3.10), terminal-table (~> 3.0, >= 3.0.1), tty-prompt

Run the following two commands in terminal:

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

Enjoy this application!



