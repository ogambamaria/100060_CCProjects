The breakdown of the folders and contents is shown below.

### Lab1
This folder contains the following files:
1) lexical_analyzer.cpp - a simple c++ program that takes a file as input and after tokenizing the file it finds what each token name is(identifier, keyword, separator, operator, literal or comment)
2) lexical_analyzer.exe - the executable file for lexical_analyzer.cpp generated during compilation.
3) test.txt - sample code used during testing

To run this program, ensure that you have C++11 or higher. 

### Lab1-2_Flex
This folder contains the following files:
1) a.exe - executable file for lab1.l
2) lab1.l - a flex program that checks if the given input string is a digit or a word or contains both
3) lex.yy.c - C program generated with flex

To generate the a.exe and lex.yy.c files, use the following:
```
> flex lab1.l
> gcc lex.yy.c
```
