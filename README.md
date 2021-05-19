# Terminal Application 

## Referenced Sources

## Source Control Repository

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

### Outline of User Interaction

**Develop an outline of the user interaction and experience for the application.**
**Your outline must include:**

- **how the user will find out how to interact with / use each feature**

The user will be given the option of reading how to use the app, and will be directed through a basic training of how to format their answers in an acceptable way

- **how the user will interact with / use each feature**

While playing a game users will be able to input the four allowable numbers for a pattern and the following extra characters 

```ruby
["+", "-", "* ", "/" , "**", "(", ")", " ", "pass" ]
```

While asking for known solutions to a pattern users will only have to input the four numbers

```ruby
Enter your pattern:
1234
```



- **how errors will be handled by the application and displayed to the user**

There are likely to be errors resulting from users including numbers and symbols that are not allowed for valid solutions



### Control Flow

Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.

### Implementation

Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan

> Your checklists for each feature should have at least 5 items.

### Help Documentation

Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements

