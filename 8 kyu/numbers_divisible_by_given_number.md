### Find Numbers which are Divisible by Given Number

---

**Problem:**

Complete the function which takes two arguments and returns all numbers which are divisible by the given divisor. First argument is an array of `numbers` and the second is the `divisor`.

---

**Examples / Test Cases:**

```ruby
divisible_by([1, 2, 3, 4, 5, 6], 2) == [2, 4, 6]
divisible_by([1, 2, 3, 4, 5, 6], 3) == [3, 6]
divisible_by([0, 1, 2, 3, 4, 5, 6], 4) == [0, 4]
divisible_by([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 17) == [0]
```

---

**Data Structure:**

**_Inputs_**

* two arguments: 1) an array of numbers; and 2) a number representing a divisor.

**_Outputs_**

* an array of numbers representing all of the numbers that are evenly divisible by the divisor (i.e. the remainder is 0 when divided by the divisor).

**_Rules_**

* 

---

**Algorithm:**

* iterate over the array of numbers and use the `select` method to select only those numbers that, when divided by the divisor, have a remainder of zero; thus, we shall use the modulo operator `%` .

---

**Code:**

```ruby
def divisible_by(numbers, divisor)
  numbers.select { |number| number % divisor == 0 }
end
```



