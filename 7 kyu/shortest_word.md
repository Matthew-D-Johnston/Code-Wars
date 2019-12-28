##### Code Wars > 7 kyu

---

## Shortest Word

**Problem:**  

Given a string of words, return the the length of the shortest word(s).  

String will never be empty and you do not need to account for different data types.  

---

**Examples / Test Cases:**  

```ruby
find_short("bitcoin take over the world maybe who knows perhaps") == 3
find_short("turns out random test cases are easier than writing out basic ones") == 3
find_short("i want to travel the world writing code one day") == 1
find_short("Lets all go on holiday somewhere very cold") == 2
```

---

**Data Structure:**  

**_Inputs_**

* A string of words.

**_Outputs_**

* An integer representing the the length of the shortest word in the string.

**_Rules_**

* String will never be empty.
* You do not need to account for different data types.  

---

**Algorithm:**  

* Split the string into separate word components using `.split`.
* Iterate through the array of words, count the lengths of each word, and if the current word is shorter than the previous word than store its length.
* Return the length of the shortest word.

---

**Code:**  

```ruby
def find_short(string)
  string.split.map(&:length).min
end
```

