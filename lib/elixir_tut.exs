## IEx must know
i # List information of anything
v # Last evaluated expression
inspect # Available anyway. Print string rep of object
h # Print documentation of a function
## Boolean and truthy
true
false
true || 42
0 || false
false || 0
nil || 42
nil or 42
true and 42
0 or false
## Float and int
1
1_000
1.0
1 + 1.0
10 / 3
10 / 2
10 / 0
5.0 == 5
5.0 === 5
## Charlist and string
"🔨"
"abc"
"abc" ++ "d"
"abc" <> "def"
1 + "abc"
'🔨'
'abc'
'abc' <> 'd'
'abc' ++ 'd'
"abc" + 'abc'
"abc" ++ 'abc'
"abc" == 'abc'
"abc" === 'abc'
~r/abc/
Regex.match?(~r/abc/, "string")
## List
[ a | b ] = [1, 2, 3]
a # 1
b # ?
[ 1, 2 ] ++ [ 3, 4 ] # ?
[ 1 | 2 ] ++ [ 3, 4 ]
[ a, b, c] = "abc"
[ a, b, c] = 'abc'
hd, tl, length, in, Enum.map, Enum.filter, Enum.reduce, Enum.each
## Map
map = %{ a: "a", b: "fiz", "c" => "buzz" }
%{ a: a } = map
a # ?
%{ "c": c } = map
c # ?
%{ a: a, d: d } = map
d # ?
Map.merge, Map.update!, Map.get_and_update, Map.size, Map.fetch!, Map.split, Map.to_list
## Tuple and pattern matching
{ x, y } = { 1, 2}
{ x, x } = { 1, 1}
x # ?
{ x, x } = { 1, 2}
{ x, _ } = { 1, 1}
{ x, _ } = { 1, 2}
length([1,2,3]) = 3

https://goo.gl/forms/JCrXwZNIw8c3ICvH2
