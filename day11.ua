I ← &fras "day-11-input.txt"

E ← "125 17"

Parse   ← ⋕≡⊢regex "(\\d+)"
Rules   ← memo⍣(¤ 1 °0|⊟∩⋕⊃↙↘ °0⊃◿₂÷₂ ⊸⧻ °⋕|¤ × 2024)
AddSert ← insert⊙(+⬚0get).⊙⊸:

PartOne ← ⧻⍥(∧(⊂ Rules)⊙[]) 25

BuildMap ← map:≡⋅1°⊏

PartTwo ← /+◌°map⍥(∧(∧(AddSert°⊟)≡⊟ Rules)°map⊙[]) 75

# Parse I
