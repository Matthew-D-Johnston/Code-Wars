### Alphabetical Addition

---

**Problem:**  

Your task is to add up letters to one letter.  

The function will be given a variable amount of arguments, each one being a letter to add.  

###### Notes:  

* Letters will always be lowercase.
* Letters can overflow (see second to last example of the description)
* If no letters are given, the function should return `'z'`

---

**Examples / Test Cases:**  

```ruby
add_letters('a', 'b', 'c') = 'f'
add_letters('a', 'b') = 'c'
add_letters('z') = 'z'
add_letters('z', 'a') = 'a'
add_letters('y', 'c', 'b') = 'd' # notice the letters overflowing
add_letters() = 'z'
```

---

**Data Structure:**  

**_Inputs_**

* A list of lowercase letters.
* An array of strings.

**_Outputs_**

* A single letter, whose letter value is equivalent to the sum of the values of the input letters.

**_Rules_**

* Letters will always be lowercase.
* Letters can overflow.
* If no letters are given, the function should return `'z'`.

---

**Algorithm:**  

* Need to decide on a way of translating letters into corresponding integer values (e.g. `'b'` into `2`); could create an alphabetical array and just add `1` to each index value, or could create a hash with explicit translations from letter to integer value. Could do array, putting `'z'` at index `0` (see below for reasoning).
* Once the letters are converted to their values, add up the values.
* Use the modulo operator to keep the final value within the range `1 - 26`, or `0 - 25` with `z = 0`.
* Use the final value as an index to extract the appropriate letter from the list.

---

**Code:**  

```ruby
def add_letters(letters)
  alphabet = (('a'..'y').to_a).unshift('z')
  letters_sum = 0
  letters.each { |char| letters_sum += alphabet.index(char) } 
  alphabet[letters_sum % 26]
end
```



