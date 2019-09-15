### Century From Year

---

**Problem:**

Given a year, return the century it is in. The first century spans from the year 1 _up to_ and including the year 100, the second--from the year 101 _up to_ and including the year 200, etc.



---

**Examples / Test Cases: **

```ruby
century(1705) == 18
century(1900) == 19
century(1601) == 17
century(2000) == 20
```

---

**Data Structure:**

**_Inputs_**

* an integer representing the year.

**_Outputs_**

* an integer representing the century that the given year is in.

**_Rules_**

* centuries span from year 1 to 100 for each one hundred year period.

---

**Algorithm:**

* use the fact that for every year that marks the end of a century, the result of modulo 100, or `year % 100` is `0`. By dividing that year by 100, we will get the appropriate century number.
* For all other years in the century, if we divide by 100, then we simply need to add 1 in order to get the appropriate century number.

---

**Code:**

```ruby
def century(year)
	year % 100 == 0 ? year / 100 : (year / 100) + 1
end
```

