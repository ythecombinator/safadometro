### Notice
To be able to understand this code, you should be familiar with stack oriented languages.

It follows some basic principles:
- Operands are always pushed to the top of the stack
- Operators consume said stack (arguments) and pushes the result back to it

Learn more about CJam by checking out its [Wiki](https://sourceforge.net/p/cjam/wiki/Home/)


### Examples

```
1 2 +                   // 3
```
> The two digits are pushed to the stack, then the plus sign, being an operator, operates (duhh!) on the stack. 
The operation consumes both the arguments and the result is pushed back, leaving the stack with the digit '3'.
```
1 2 \                   // 2 1
5 3 -                   // 2
5 3 \ -                 // -2
```
> This operator is used to switch the first top two elements of the stack. Notice how the '-' is only evaluated after the swap.

And so on, etc...


Back to the program:

Input: 8 9 93

 Code | Explanation | Stack contents
 ---- | ----- | -----
{r~}3* | Reads in the input and evaluates to int | 8 9 93
100./ |  Calculates 100.0/93.  | 8 9 0.93
@50\\- |  Calculates 50 - 8.	| 9 0.93 42
\*    |	 Multiplies the top two elements		| 9 39.06
\\_[\{_1-}*]{+}\*+ |				Sum formula 							| 39.06 45
_100\\- |						Calculates safadeza					| 84.06 15.9399
"Safadeza: "@@"% Anjo: "\"%"| 	Pretty printing						| Safadeza: 84.06% Anjo: 15.939999999999998%

>CJam, by default, prints the resulting stack after program completion.


The spaces were kept to help readability, but codegolfing oriented languages advocates against their use. Shorter code = more likes
Read more about code golfing here: [Wikipedia](https://en.wikipedia.org/wiki/Code_golf) or [Stack Exchange](http://codegolf.stackexchange.com/)


To try out the code above [here](http://cjam.aditsu.net/), paste the arguments and code(safadeza.cjam) into their respectively textboxes.