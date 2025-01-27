/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal = 6.5
var secondDecimal = 7.9

//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrfalse: Bool
print("The statement does not compile because you cannot assign a variable value of a different type to another variable; firstDecimal is a type Double while trueOrfalse is type Boolean .")

//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var stringpro = "Hello"
print("The statement does not compile because you cannot assign a variable value of a different type to another variable; firstDecimal is a type Double while stringpro is type string.")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var wholeNumber = 5
print("The statement does not compile because even though they are both numbers to the humna eye, the compiler sees wholeNumber as a type Integrer while firstDecimal is a type Double.")
