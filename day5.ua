# Experimental!

I ← &fras "day-5-input.txt"

$ 47|53
$ 97|13
$ 97|61
$ 97|47
$ 75|29
$ 61|13
$ 75|53
$ 29|13
$ 97|29
$ 53|29
$ 61|53
$ 97|53
$ 61|29
$ 47|13
$ 75|47
$ 97|75
$ 47|61
$ 75|61
$ 47|29
$ 75|13
$ 53|13
$ 
$ 75,47,61,53,29
$ 97,61,53,29,13
$ 75,29,13
$ 75,97,47,61,53
$ 61,13,29
$ 97,13,75,29,47
E ←

Split!   ← ⊜^0⊸≠
InsertAt ← ⊂⊂⊃(↙ ⊙⋅∘|⋅∘|↘ ⊙⋅∘)

Sections ← °⊟⊜□¬⊸⦷ "\n\n" I

L ← map⊓⊕⊢⊕□’⊸⊛°⊟⍉Split!(Split!⋕ @|)@\n°□⊙◌ Sections
M ← Split!(□Split!⋕@,)@\n°□◌Sections

Last         ← ⍜⇌°⊂
IndexPage    ← ⊚ ∈°□⍣get[]⊙L
CheckPage    ← =0⧻ IndexPage Last
CheckManual  ← /↧⧅CheckPage
CheckManuals ← ≡◇CheckManual

Middle  ← ⊡⌊÷2⊸⧻
Middles ← /+≡◇Middle

FixPage   ← InsertAt⊢◡IndexPage Last
FixPageN  ← ⊂⍢(FixPage|¬ CheckPage)⊃↙↘
FixManual ← ∧FixPageN+1⇡⊸⧻

PartOne ← Middles▽CheckManuals .M

PartTwo ← Middles≡⍚FixManual ▽ ¬ CheckManuals .M
