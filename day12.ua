# Experimental!

I ← &fras "day-12-input.txt"

$ RRRRIICCFF
$ RRRRIICCCF
$ VVRRRCCFFF
$ VVRCCCJFFF
$ VVVVCJJCFE
$ VVIVCCJJEE
$ VVIIICJJEE
$ MIIIIIJJEE
$ MIIISIJEEE
$ MMMISSJEEE
E ←

Dirs          ← [0_1 ¯1_0 0_¯1 1_0]
Offsets       ← +Dirs¤
Map           ← ⊜∘⊸≠@\n I
Size          ← ⊟⧻⊢⟜⧻ Map
Within        ← /↧⊂⊃≥₀(< Size)
Neighbours    ← :□ ▽=⊙:∩⌟⤚⊡▽ ⊸≡Within ⊸Offsets
NeighboursMap ← map ≡Neighbours ♭₂⇡ Size ¤ Map
Step          ← ⍆◴⊂/◇⊂≡get ⊙(¤ NeighboursMap).
Area          ← ⍥Step ∞
Areas         ← ◴≡(□ Area) ≡¤ ♭₂⇡ Size
SetPoints     ← ∧(⍜⊡ ⋅1):↯ Size 0
Fences        ← /+⊂∩≡(×2⧻⊜⧻.)⊸⍉ SetPoints
Cost          ← ×⊃Fences⧻

PartOne ← /+≡◇Cost Areas

Sides   ← /+≡(⧻⊜⧻.)×⊂¤∩¬⊸⍜⇌°⊂
Fences₂ ← /+[∩₄Sides⊃(∘|⇌|⍉|⇌ ⍉)]SetPoints°□

Cost₂ ← × ⊃Fences₂⧻
/+≡◇Cost₂ Areas
