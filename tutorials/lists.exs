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

# In addition to the aforementioned functions, you can use pattern matching and the cons operator | to split a list into head and tail
[head | tail] = list
head # 3.14
tail # [:pie, apple]

# KEYWORD LISTS
# Keyword lists and maps are the associative collections of Elixir.
# In Elixir, a keyword list is a special list of two-element tuples whose first element is an atom; they share performance with lists:
[foo: "bar", hello: "world"] # [foo]

# MAPS
# In Elixir, maps are the “go-to” key-value store. Unlike keyword lists, they allow keys of any type and are un-ordered. You can define a map with the %{} syntax:
map = %{ :foo => "bar", "hello" => :world }
map[:foo] # "bar"
map["hello"] # :world

# As of Elixir 1.2, variables are allowed as map keys:
key = "hello"
%{ key => "world" } # %{ "hello" => "world" }

# If a duplicate is added to a map, it will replace the former value:
%{ :foo => "bar", :foo => "hello world" } # %{ foo: "hello world" }

# Atom keys can be accessed via Dot Syntax
map = %{ foo: "bar", hello: "world" }
map.hello # "world"

# Another interesting property of maps is that they provide their own syntax for updates (note: this creates a new map)
# NOTE... the below will only work if the key already exists, otherwise, you will get an error:
map = %{ foo: "baz", hello: "world" }
%{ map | food: "bar" }

# To create a new key, instead use Map.put/3
map = ${ hello: "world" }
Map.put(map, :foo, "bar") # ${ foo: "bar", hello: "world" }
