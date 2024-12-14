I ← &fras "day-9-input.txt"

E ← "2333133121414131402"

Fat ← ▽:⌈×⊃÷₂◿₂+1°⊏≡⋕ I

Setup    ← ⊃(▽⊸<|⊃(↙|⇌▽⊸≠0↘) ⊙⋅∘)-◡∩⧻⊚⊸=₀
Compress ← -1⍜⊏ ⋅∘
CheckSum ← /+×°⊏

# PartOne ← CheckSum Compress

# Setup Fat
# PartOne

FileIndexes ← ⊜□:°⊏
FreeSpaces  ← ⊜□=0:°⊏
FI          ← FileIndexes Fat

Step ← (
  °□
  ⊙(▽≥⊃(⧻|⊸≡◇⧻ FreeSpaces↙⊢))∩.
  ≠0⧻,
  ⨬(◌◌
  | ⊙(°□⊢)
    :⊃(∘|↙⧻)
    ⍜⊏⋅∘⊙(⍜⊏⋅∘⊃(⊙∘|⊚⧻|⊏))
  )
)

PartTwo ← ∧Step⇌ FI Fat

CheckSum ↥ 0 -1 PartTwo
