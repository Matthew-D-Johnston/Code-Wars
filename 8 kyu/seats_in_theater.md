### Seats in Theater

---

**Problem:**

Your friend advised you to see a new performance in the most popular theater in the city. He knows a lot about art and his advice is usually good, but not this time: the performance turned out to be awfully dull. It's so bad you want to sneak out, which is quite simple, especially since the exit is located right behind your row to the left. All you need to do is climb over your seat and make your way to the exit.



The main problem is your shyness: you're afraid that you'll end up blocking the view (even if only for a couple of seconds) of all the people who sit behind you and in your column or the columns to your left. To gain some courage, you decide to calculate the number of such people and see if you can possibly make it to the exit without disturbing too many people.



Given the total number of rows and columns in the theater (nRows and nCols, respectively), and the row and column you're sitting in, return the number of people who sit strictly behind you and in your column or to the left, assuming all seats are occupied.

---

**Examples / Test Cases:**

For nCols = 16, nRows = 11, col = 5, and row = 3:

```ruby
seats_in_theater(16, 11, 5, 3) == 96
```

Other examples:

```ruby
seats_in_theater(1, 1, 1, 1) == 0
seats_in_theater(13, 6, 8, 3) == 18
seats_in_theater(60, 100, 60, 1) == 99
seats_in_theater(1000, 1000, 1000, 1000) == 0
```

---

**Data Structure:**

**_Inputs_**

* four integer arguments: 1) represents number of columns; 2) represents number of rows; 3) represents column in which you are seated; and 4) represents row in which you are seated.

**_Outputs_**

* one integer representing the number of people sitting behind you that will be disturbed when you get up to go to the bathroom.

---

**Algorithm:**

* The number of rows behind your seat will always be the total number of rows minus the row you are sitting in.
* The number of columns behind and to the left of you will always be the total number of columns minus the (column you are sitting in minus one).
* Multiply the resulting rows and columns of those seats behind and to the left to get the result.
* For example with nCols = 16, nRows = 11, col = 5, and row = 3, we have columns = 16 - (5-1) = 12 and rows = 11 - 3 = 8; multiplying we have 12 * 8 = 96, the expected result.

---

**Code:**

```ruby
def seats_in_theater(tot_cols, tot_rows, col, row)
  (tot_cols - (col -1)) * (tot_rows - row)
end
```

