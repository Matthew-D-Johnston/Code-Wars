### Find the Integral

---

**Problem:**

Create a function that finds the integral of the expression passed.



In order to find the integral all you need to do is add one to the `exponent` (the second argument), and divide the `coefficient` (the first argument) by that new number.



For example for `3x^2`, the integral would be `1x^3`: we added 1 to the exponent, and divided the coefficient by that new number).



Notes:

* The output should be a string.
* The coefficient and exponent is always a positive integer.

---

**Examples / Test Cases:**

```ruby
integrate(3, 2) == "1x^3"
integrate(12, 5) == "2x^6"
integrate(20, 1) == "10x^2"
integrate(40, 3) == "10x^4"
integrate(90, 2) == "30x^3"
```

---

**Data Structure:**

**_Inputs_**

* two arguments: 1) an integer representing the coefficient; and 2) an integer representing the exponent.

**_Outputs_**

* one string object representing the integral of an expression based on the arguments given.

**_Rules_**

* the coefficient and exponent are always positive integers.

---

**Algorithm:**

* take the exponent argument and add one.
* Use the result of that addition and divide the coefficient.
* Those two results should then be incorporated into a string using string interpolation.

---

**Code:**

```ruby
def integrate(coeff, exp)
  "#{coeff / (exp + 1)}x^#{exp + 1}"
end
```

