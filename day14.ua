# Experimental!

I ← &fras "day-14-input.txt"

$ p=0,4 v=3,-3
$ p=6,3 v=-1,-3
$ p=10,3 v=-1,2
$ p=2,0 v=2,-1
$ p=0,0 v=1,3
$ p=3,0 v=-2,-2
$ p=7,6 v=-1,-3
$ p=3,0 v=-1,-2
$ p=9,3 v=2,3
$ p=7,3 v=-1,2
$ p=2,4 v=2,-3
$ p=9,5 v=-3,-3
E ←

C ← ℂ °⊟

Regex ← "p=(\\d+),(\\d+) v=(-?\\d+),(-?\\d+)"
Parse ← ≡◇(⊟⊃(⊏ 0_1|⊏ 2_3) ⋕ ↘₁ ⊢ regex Regex)⊜□ ⊸≠@\n
Size  ← 101_103
# Size     ← 11_7
HalfSize ← ⌊ ÷ 2 Size

QuadSetup ← ⊙:°[⊙⊙⊙∘]⊂HalfSize
Q₁        ← ↧⊓<<
Q₂        ← ↧ ⊓><
Q₃        ← ↧ ⊓<>
Q₄        ← ↧ ⊓>>

PartOne ← /×[⊃(/+≡Q₁|/+≡Q₂|/+≡Q₃|/+≡Q₄)]≡QuadSetup≡(◿ Size+⊙×₁₀₀°⊟)Parse I

MeanAbs  ← ÷⊃⧻ /+ ≡(⌵/-)⧅< 2≡C
MeanAbs₂ ← ÷⊃⧻ /+ ≡(⌵/-)⧅< 2≡C ⊏↙⌈÷5⊸⧻°⍆°⊏

Inside  ← /↧↧⊃(> 54_42|< 86_72)
Advance ← ◿ ¤ Size +×⊙⊸:
PositionList ← (
  ⊙(Advance 10000 ⊃≡⊢≡⊣⊙[]Parse):
  ◌◌⍥(⊃(⊙⋅∘|⊂ ¤ ⋅⊙⋅∘)≡◿ ¤ Size ◡+)
)

Set      ← ⍜⊡ ⋅1
ToFrames ← ≡(↯ Size°⊚)

⊃≡⊣≡⊢Parse I []
⍥(⟜+⊙⟜(⊂/+≡Inside≡◿ ¤ Size)) 10000
◌◌
> 120 ⇌
⊚

⊃≡⊣≡⊢Parse I
× 7847
≡◿ ¤ Size +
°⊚
↯ Size
