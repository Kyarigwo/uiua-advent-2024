# Experimental!

I ← &fras "day-6-input.txt"

$ ....#.....
$ .........#
$ ..........
$ ..#.......
$ .......#..
$ ..........
$ .#..^.....
$ ........#.
$ #.........
$ ......#...
E ←

C ← ℂ°⊟

Rs        ← ⇌⊜∘⊸≠@\n E
Size      ← [⧻⊃⊢⧻ Rs]
S         ← C⊢⊚=@^Rs
D         ← i
L         ← map:°⊏≡C ⊚=@# Rs
Step      ← ⨬(⊸+|⊙(×¯i))◡(has+⊙⊙◌)
Upsert    ← ⊃(⊙∘|insert:□⊂⊃(⋅∘|°□⍣get[]⊙⋅∘|⊙⋅∘))
Contained ← /↧⊂⊃≥₀(<Size)[°ℂ]
Unique    ← ¬∈⊃(°□⍣get[]⊙⋅∘|⋅∘)
Init      ← S D [] L
Path      ← ⊙◌°map⋅⋅⊙◌⍢(Step Upsert|Contained) Init
Append    ← insert⊙⊸⧻&p.:
# PartOne ← ◌◌◌⍢(Step Upsert|Contained) Init

Walk ← ¬⊙◌ Unique⍢(Step Upsert|↧⊃Contained Unique) ⊙⊙⊙Append Init
⧻ ▽ ≡Walk Path Path
