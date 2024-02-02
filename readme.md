Lexical Analyzer in Haskell
This project demonstrates the implementation of a lexical analyzer (also known as a lexer or scanner) in Haskell. The goal of a lexical analyzer is to break down input text into meaningful tokens, which serve as the building blocks for further parsing and interpretation.

Features
Tokenization: The lexer identifies and categorizes different elements in the input, such as keywords, identifiers, literals, and operators.
Regular Expressions: We define regular expressions to recognize specific patterns within the input stream.
Automaton: The lexer operates as a finite automaton, transitioning between states based on the input characters.
Usage
Installation:

Make sure you have Haskell installed on your system.
Clone this repository to your local machine.
Building and Running:

Navigate to the project directory.
Compile the Haskell code using GHC (Glasgow Haskell Compiler).
Execute the resulting binary.
Input:

Provide a word

Output:

Boolean value telling whether the word belongs to the automation or not
The automation is defined in the source code
Feel free to edit it