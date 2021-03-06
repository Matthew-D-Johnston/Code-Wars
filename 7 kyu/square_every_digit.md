##### Code Wars > 7 kyu

---

## Square Every Digit

**Problem:**  

In this kata, you are asked to square every digit of a number.  

For example, if we run 9119 through the function, 811181 will come out, because 9^2 is 81 and 1^2 is 1.  

Note: the function accepts an integer and returns an integer.

---

**Examples / Test Cases:**  

```ruby
square_digits(3212) == 9414
square_digits(2112) == 4114
square_digits(1111) == 1111
square_digits(1234321) == 14916941
square_digits(0) == 0
```

---

**Data Structure:**  

**_Inputs_**

* An integer.

**_Outputs_**

* An integer whose digits represent the squared digits of the input integer.

---

**Algorithm:**  

* Split the input integer into separate digits within an array using the `digits` method, remembering to reverse the resulting array using `reverse`.
* Iterate over the array, squaring each element, and storing in a new array using `map`.
* Join the elements of the array with `join` and make sure to return an integer using `to_i`.

---

**Code:** 

```ruby
def square_digits(number)
  number.digits.reverse.map { |digit| digit ** 2 }.join.to_i
end
```



