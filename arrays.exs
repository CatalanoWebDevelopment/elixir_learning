list = [3.14, :pie, "Apple"]

# Prepending (Fast)
["n", list]

# Appending (Slow)
list ++ ["Cherry"]

# List Concatenation
[1, 2] ++ [3, 4, 1] 

# List Subtraction
["foo", :bar, 42] -- [42, "bar"] # ["foo", :bar]

# Be mindful of duplicate values. For every element on the right, the first occurrence of it gets removed from the left:
[1, 2, 2, 3, 2, 3] -- [1, 2, 3, 2] # [2, 3]

# Note: List subtraction uses strict comparison to match the values. For example:
[2] -- [2.0] # [2]
[2.0] -- [2.0] # []

# When using lists, it is common to work with a list’s head and tail. 
# The head is the list’s first element, while the tail is a list containing the remaining elements. 
# Elixir provides two helpful functions, hd and tl, for working with these parts:

hd [3.14, :pie, "Apple"] # 3.14

tl [3.14, :pie, "Apple"] # [:pie, "Apple"]
 