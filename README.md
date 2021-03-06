# calendar_app
calendar app for the terminal that mimics "cal(unix)" http://en.wikipedia.org/wiki/Cal_(Unix)

![Ruby image](http://zohararad.github.io/presentations/falling-in-love-with-ruby/presentation/images/ruby.png)

##Cal
The Unit 1 capstone for this course is the implementation of a subset of the Unix program, cal.

##Objectives

*Practice with Arrays, Hashes, and Strings
*Develop the logic of a non-trivial algorithm
*Programming to meet a (changing) specification

##Requirements

*Your program must have tests. These test may be as high-level (integration tests) or as low-level (unit tests) as you wish. I highly recommend a mix of tests.
*You may not use any of the built-in Ruby classes that provide date, time, or calendar functionality.
*You may not use exec, Kernel, etc. to shell out to any Unix programs.
*You should not use "magic" numbers.
*You must commit your code at least once per day and push it to your github repository.
*Your program should accept any combination of months and years between 1800 and 3000.

##Suggested Implementation Order

*You will find this (and all future) programming projects much easier if you take the time to break it down into smaller parts. I will suggest a breakdown that works well for me:

1. Implement Zeller's Congruence, with test for all of the special types of months/years.
2. Implement printing a month where the first day of the month is on a Sunday. For example, January 2012. This is the easiest type of month to print and can be thought of as a base case. For this, you can temporarily hardcode the assumption that the month will start on Sunday. Of course, you will use tests for this!
3. Combine the powers of your Zeller's Congruence (which will tell you the real first day of the month) with your basic month printing from step 2. Test the hell out of this!
4. After you feel good about that and have had your first milestone reviewed, combine the ability to print each individual month, to allow you to print an entire year. Hint: This is all about combining strings!

##Resources:

Wikipedia articles that may be of use:

http://en.wikipedia.org/wiki/Cal_(Unix)
http://en.wikipedia.org/wiki/Gregorian_calendar
http://en.wikipedia.org/wiki/Zeller's_congruence
