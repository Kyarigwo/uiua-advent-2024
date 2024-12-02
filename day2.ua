# Experimental!
I ← &fras "day-2-input.txt"
E ← $ 7 6 4 2 1
    $ 1 2 7 8 9
    $ 9 7 6 2 1
    $ 1 3 2 4 5
    $ 8 6 4 4 1
    $ 1 3 6 7 9

Parse ← ⊜(□⋕≡⊢regex "(\\d+)")⊸≠@\n

# gets the difference between adjacent elements
Differences ← -⊃↘₁⍜⇌↘₁

# are they all either increasing or decreasing?
StrictlyMonatonic ← ↥∩/↧⊃>₀<₀

# are abs all 3 or less?
SafeLimits ← /↧≤₃⌵

# is this row safe?
Safe ← ↧⊃StrictlyMonatonic SafeLimits Differences

# how many rows are safe?
PartOne ← /+ ≡◇Safe

# Generate all examples where on element deleted
ProblemDamped ← ≡▽⊙¤⊞≠.°⊏
#  ×⊙¤⊞≠.°⊏
# Safe if save or any damped safe
DampedSafe ← ↥⊃(/↥≡Safe ProblemDamped) Safe

# part two
PartTwo ← /+≡◇DampedSafe

Parse E
PartTwo
