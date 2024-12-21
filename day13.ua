I ← &fras "day-13-input.txt"

$ Button A: X+94, Y+34
$ Button B: X+22, Y+67
$ Prize: X=8400, Y=5400
$ 
$ Button A: X+26, Y+66
$ Button B: X+67, Y+21
$ Prize: X=12748, Y=12176
$ 
$ Button A: X+17, Y+86
$ Button B: X+84, Y+37
$ Prize: X=7870, Y=6450
$ 
$ Button A: X+69, Y+23
$ Button B: X+27, Y+71
$ Prize: X=18641, Y=10279
E ←

# A and B are vectors - we want to solve for m*A + n*B = P, for
# natural m and n
# 
# m A /\ B = P /\ B so m = (P /\ B) / (A /\ B) and
# n B /\ A = P /\ A so n = (P /\ A) / (B /\ A) and

Wedge ← /-×⇌
A     ← 94_34
B     ← 22_67
P     ← 8400_5400

Offset ← [.10000000000000]

M ← ⊃(⊙∘|⋅⋅∘|⋅∘)
N ← ⊃(:|⋅⋅∘|∘)
C ← ÷∩Wedge

V      ← [⊃(C M|C N)]
Tokens ← /+ × 3_1

Clauses     ← ⊜□=0⊸⦷ "\n\n" I
ParseClause ← ⋕≡↘₁regex "(\\d+)\\D+(\\d+)"

# Either 1 A ^ B == 0 or the ratios are not round numbers
PartOne ← /+≡Tokens ▽⊸≡(≍⊸⌊)≡(V°[⊙⊙∘]) ≡ParseClause Clauses

PartTwo ← /+≡Tokens ▽⊸≡(≍⊸⌊)≡(V⊙⊙(+ Offset) °[⊙⊙∘]) ≡ParseClause Clauses
