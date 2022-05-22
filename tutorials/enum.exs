exampleList = ["foo", "bar", "hello"]

# Enum.all?()
# When using all?/2, and much of Enum, we supply a function to apply to our collection’s items.
# In the case of all?/2, the entire collection must evaluate to true otherwise false will be returned:
falseAll = Enum.all?(exampleList, fn(s) -> String.length(s) == 3 end)
IO.puts "False All: #{falseAll}" # false

trueAll = Enum.all?(exampleList, fn(s) -> String.length(s) > 1 end)
IO.puts "True All: #{trueAll}" #true

# Enum.any?()
# Unlike the above, any?/2 will return true if at least one item evaluates to true:
trueAny = Enum.any?(exampleList, fn(s) -> String.length(s) == 5 end)
IO.puts "True Any: #{trueAny}" # true

# Enum.chunk_every()
# If you need to break your collection up into smaller groups, chunk_every/2 is the function you’re probably looking for:
chunked = Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
IO.inspect(chunked) #[[1, 2], [3, 4], [5, 6]]


# Enum.chunk_by()
# If we need to group our collection based on something other than size, we can use the chunk_by/2 function.
# It takes a given enumerable and a function, and when the return on that function changes a new group is started and begins the creation of the next.
# In the examples below, each string of the same length is grouped together until we encounter a new string of a new length:
Enum.chunk_by(exampleList, fn(x) -> String.length(x) end)
# [["foo", "bar"], ["hello"]]

Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(x) -> String.length(x) end)
# [["one", "two"], ["three"], ["four", "five"], ["six"]]

# Enum.map_every()
# Sometimes chunking out a collection isn’t enough for exactly what we may need.
# If this is the case, map_every/3 can be very useful to hit every nth items, always hitting the first one:
add1000 = Enum.map_every([1, 2, 3, 4, 5], 2, fn x -> x + 1000 end)
IO.inspect(add1000)

# Enum.each()
Enum.each(exampleList, fn(s) -> IO.puts(s) end)

# Enum.map()
newList = Enum.map(exampleList, fn(x) -> x <> "Added" end)
IO.puts newList

# Enum.min()
# min/1 finds the minimal value in the collection:
min = Enum.min(exampleList)
IO.puts "Min index: #{min}"

# min/2 does the same, but in case the enumerable is empty, it allows us to specify a function to produce the minimum value.
newMin = Enum.min([], fn -> :foo end)
IO.inspect("New Min index: #{newMin}")

# Enum.max()
# max/1 returns the maximal value in the collection:
Enum.max([5, 3, 0, -1]) # 5

# max/2 is to max/1 what min/2 is to min/1:
Enum.max([], fn -> :bar end) # :bar

# Enum.filter()
IO.inspect(Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end))

# Enum.reduce()
# With reduce/3 we can distill our collection down into a single value.
# To do this we supply an optional accumulator (10 in this example) to be passed into our function; if no accumulator is provided the first element in the enumerable is used:

Enum.reduce([1, 2, 3], 10, fn(x, acc) -> x + acc end)
# 16

Enum.reduce([1, 2, 3], fn(x, acc) -> x + acc end)
# 6

Enum.reduce(["a","b","c"], "1", fn(x,acc)-> x <> acc end)
# "cba1"
