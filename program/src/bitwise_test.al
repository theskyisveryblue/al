
// Basic Operations
a = 1
b = 0
c = 3 // 11 in binary
d = 5 // 101 in binary

// AND
assert (1 & 1) == 1, '1 & 1 failed'
assert (1 & 0) == 0, '1 & 0 failed'
assert (0 & 1) == 0, '0 & 1 failed'
assert (0 & 0) == 0, '0 & 0 failed'
println('AND basic tests passed')

// OR
assert (1 | 1) == 1, '1 | 1 failed'
assert (1 | 0) == 1, '1 | 0 failed'
assert (0 | 1) == 1, '0 | 1 failed'
assert (0 | 0) == 0, '0 | 0 failed'
println('OR basic tests passed')

// XOR
assert (1 ^ 1) == 0, '1 ^ 1 failed'
assert (1 ^ 0) == 1, '1 ^ 0 failed'
assert (0 ^ 1) == 1, '0 ^ 1 failed'
assert (0 ^ 0) == 0, '0 ^ 0 failed'
println('XOR basic tests passed')

// Complex Values
assert (3 & 5) == 1, '3 & 5 failed (011 & 101 = 001)'
assert (3 | 5) == 7, '3 | 5 failed (011 | 101 = 111)'
assert (3 ^ 5) == 6, '3 ^ 5 failed (011 ^ 101 = 110)'
println('Complex value tests passed')

// Precedence
// & has higher precedence than |
// 1 | 2 & 3 should be 1 | (2 & 3) => 1 | 2 => 3
// (1 | 2) & 3 => 3 & 3 => 3. Wait.
// 2 is 010. 3 is 011. 2 & 3 is 010 (2).
// 1 | 2 is 3 (011).
// So 1 | 2 & 3 -> 1 | (2) -> 3.
// Let's try 4 | 2 & 1
// 2 & 1 = 0. 4 | 0 = 4.
// (4 | 2) & 1 = (6) & 1 = 0.
assert (4 | 2 & 1) == 4, 'Precedence & > | failed'

// ^ has higher precedence than | but lower than &
// 1 | 2 ^ 3
// 2 ^ 3 = 1 (010 ^ 011 = 001).
// 1 | 1 = 1.
// (1 | 2) ^ 3 = 3 ^ 3 = 0.
// Let's change numbers. 4 | 2 ^ 6
// 2 ^ 6 = 2 ^ 110 (6) = 010 ^ 110 = 100 (4).
// 4 | 4 = 4.
// (4 | 2) ^ 6 = 6 ^ 6 = 0.
assert (4 | 2 ^ 6) == 4, 'Precedence ^ > | failed'

// 4 ^ 2 & 6
// 2 & 6 = 2 (010 & 110 = 010).
// 4 ^ 2 = 6 (100 ^ 010 = 110).
// (4 ^ 2) & 6 = 6 & 6 = 6.
// Wait, 4 ^ (2 & 6) = 4 ^ 2 = 6.
// ((4 ^ 2) & 6) = 6 & 6 = 6.
// Bad test.
// 4 ^ 3 & 1
// 3 & 1 = 1.
// 4 ^ 1 = 5.
// (4 ^ 3) & 1 = 7 & 1 = 1.
assert (4 ^ 3 & 1) == 5, 'Precedence & > ^ failed'

println('Precedence tests passed')
