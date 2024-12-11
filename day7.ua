# Experimental!
~ "utils.ua" ~ Split!

I ← &fras "day-7-input.txt"

$ 190: 10 19
$ 3267: 81 40 27
$ 83: 17 5
$ 156: 15 6
$ 7290: 6 8 6 15
$ 161011: 16 10 13
$ 192: 17 8 14
$ 21037: 9 7 18 13
$ 292: 11 6 16 20
E ←

# Op       ← ∧⨬+×
Concat   ← ⋕⊂:∩°⋕
Op       ← ∧⨬(+|×|⋕⊂:∩°⋕)
BuildOps ← ⍥(♭₂⊞⊂[0 1 2]) ⊙[0 1 2] -1
Run      ← =∧Op⊃(⋅⋅∘|:°⊂|⋅∘)
# Check    ← /↥≡Run∩¤⊃(⊙∘|⋯⇡ⁿ⊙2-1⧻)°□
Check ← /↥≡Run∩¤⊃(⊙∘|BuildOps -1⧻)°□
# DayOne ← /+▽≡Check⊙.
DayTwo ← /+▽≡Check⊙.

Rs ← : ≡(⊓(⋕|□⊜⋕⊸≠@ °□)°⊟↘₁)regex "(\\d+):([^\n]*)" E

DayTwo Rs
