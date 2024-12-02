# Experimental!

I ← &fras "day-3-input.txt"

$ xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))
E ←

$ xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))
ETwo ←

MMul   ← "mul\\((\\d{1,3}),(\\d{1,3})\\)"
RunMul ← /+≡/×⬚0⋕

PartOne ← RunMul ≡↘₁regex MMul

MDo   ← "do\\(\\)"
MDont ← "don't\\(\\)"

PartTwo ← (
  ⬚""regex $"_|_|_" MMul MDo MDont
  +×2 ∩≡◇≍ ¤"don't()"⊸:¤"do()" ≡°⊂
  ▽↘1⬚1\(⨬(∘|⋅1|⋅0):)
  RunMul
)
