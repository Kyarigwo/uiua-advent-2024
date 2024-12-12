I ← &fras "day-9-input.txt"

E ← "2333133121414131402"

Fat ← ▽:⌈×⊃÷₂◿₂+1°⊏≡⋕ E

Setup    ← ⊃(▽⊸<|⊃(↙|⇌▽⊸≠0↘) ⊙⋅∘)-◡∩⧻⊚⊸=₀ Fat
Compress ← -1⍜⊏ ⋅∘ Setup
CheckSum ← /+×°⊏

PartOne ← CheckSum Compress
