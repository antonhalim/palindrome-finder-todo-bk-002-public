---
tags: todo, string manipulation, cs, computer science
language: ruby
resources: 1
---

# Palindrome Finder

## Objective

Write a method that finds the longest palindrome in a string.

## Examples

It should return the only palindrome if there is only one:

```ruby
finder = PalindromeFinder.new("hello")
finder.get_longest_palindrome
# => "ll"
```

It should return the longest palindrome if there are multiple ones:

```ruby
new_finder = PalindromeFinder.new("hello-racecar-anna")
new_finder.get_longest_palindrome
# => "racecar"
```

It should return a message if no palindromes are found:

```ruby
final_finder = PalindromeFinder.new("blah")
final_finder.get_longest_palindrome
# => "no palindromes found"
```

## Instructions

This is a test-driven todo so get those specs to pass!

## Resources

* [Wikipedia](http://en.wikipedia.org/) - [Palindromes](http://en.wikipedia.org/wiki/Palindrome)
