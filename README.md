# Methods Quiz 2

## Setup

Fork the repository, then clone your fork

Install ruby dependencies

```
    $ bundle install
```

Run the existing tests at least once to make sure there are no errors before writing any code.

```
    $ ruby methods_quiz_test.rb
```

Open the folder in a new sublime window

```
    $ subl .
```

## Quiz

Follow this process for your quiz:

1. Write the tests for a method first!!
2. Commit with message "Tests for method_name"
3. Use the tests to write the method. Red -> Green -> Refactor.
4. Commit with message "method_name complete"
5. Move on to the next method
6. When all done, run the entire test suite verify everything still works
7. Turn it in with:
    ```$ git push```

## Methods to Implement

1. without_doubles

    Return the sum of two 6-sided dice rolls, each in the range 1..6. However, if the parameter no_doubles is true, if the two dice show the same value, increment one die to the next value before computing the sum, wrapping the die's value around to 1 if its value was 6.


2. max_maybe

    Given two integer values, return whichever value is larger. However if the two values have the same remainder when divided by 5, then the return the smaller value. However, in all cases, if the two values are the same, return 0.


3. squirrels_play?

    The squirrels in Highlands Ranch spend most of the day playing. In particular, they play if the temperature is between 60 and 90 (inclusive). Unless it is summer, then the upper limit is 100 instead of 90. Given a temperature and whether or not it is summer, decide if the squirrels should play.
4. red_ticket

    You have a red lottery ticket showing three integers, each of which is 0, 1, or 2. If they are all the value 2, the result is 10. Otherwise if they are all the same, the result is 5. Otherwise so long as both b and c are different from a, the result is 1. Otherwise the result is 0.

## Testing

Run the entire test suite

```
    $ ruby methods_quiz2_test.rb
```

Run only a specific test

```
    $ ruby methods_quiz2_test.rb --name test_method_name
```