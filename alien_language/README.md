Problem

After years of study, scientists at Google Labs have discovered an alien language transmitted from a faraway planet. The alien language is very unique in that every word consists of exactly L lowercase letters. Also, there are exactly D words in this language.

Once the dictionary of all the words in the alien language was built, the next breakthrough was to discover that the aliens have been transmitting messages to Earth for the past decade. Unfortunately, these signals are weakened due to the distance between our two planets and some of the words may be misinterpreted. In order to help them decipher these messages, the scientists have asked you to devise an algorithm that will determine the number of possible interpretations for a given pattern.

A pattern consists of exactly L tokens. Each token is either a single lowercase letter (the scientists are very sure that this is the letter) or a group of unique lowercase letters surrounded by parenthesis ( and ). For example: (ab)d(dc) means the first letter is either a or b, the second letter is definitely d and the last letter is either d or c. Therefore, the pattern (ab)d(dc) can stand for either one of these 4 possibilities: add, adc, bdd, bdc.

Input

The first line of input contains 3 integers, L, D and N separated by a space. D lines follow, each containing one word of length L. These are the words that are known to exist in the alien language. N test cases then follow, each on its own line and each consisting of a pattern as described above. You may assume that all known words provided are unique.

Output

For each test case, output

Case #X: K
where X is the test case number, starting from 1, and K indicates how many words in the alien language match the pattern.

Limits

Small dataset

1 ≤ L ≤ 10
1 ≤ D ≤ 25
1 ≤ N ≤ 10
Large dataset

1 ≤ L ≤ 15
1 ≤ D ≤ 5000
1 ≤ N ≤ 500
Sample


Input 
 	
Output 
 
3 5 4
abc
bca
dac
dbc
cba
(ab)(bc)(ca)
abc
(abc)(abc)(abc)
(zyx)bc
Case #1: 2
Case #2: 1
Case #3: 3
Case #4: 0


Code Analysis

First we store all the words in a 2 dimensional array.
After that, we read each pattern, parse it, and count how many words match.

One possible way of storing a pattern is a 2 dimensional array P[15][26]. P[i][j] is True only if the i-th token contains the j-th letter of the alphabet, otherwise False. In other words, P[i] is a bitmap of the letters contained by the i-th token.

Parsing can be done like this:
- read one character c
- if c is '(', read characters until we hit ')'. The characters read are the token.
else the token is the character c
- populate P[i] for the characters in the token

To count how many words match, we make sure that each letter i from the word is contained in the bitmap P[i].

Total complexity is O(N * L * D).

In some programming languages this can solved by transforming the pattern into a regular expression. For instance in python replace '(' and ')' with '[' and ']'.
