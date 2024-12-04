I ← &fras "day-4-input.txt"

E ← $ MMMSXXMASM
    $ MSAMXMSMSA
    $ AMXSXMAAMM
    $ MSAMASMSMX
    $ XMASAMXAMM
    $ XXAMMXXAMA
    $ SMSMSASXSS
    $ SAXAMASAAA
    $ MAMMMXMMMM
    $ MXMXAXMASX

Lines ← ⊜∘⊸≠@\n
Find  ← /+♭≡⌕ ¤"XMAS"
Skew  ← ⬚@ ≡(⊂≡⋅@ ⊚)°⊏
Cross ← ⊡⊚↥⊸⇌⊞=.⇡3

W ← /+[∩₄Find]⊃(∘|≡⇌|⍉|≡⇌ ⍉)

V ← (
  ♭₂⊟⊓⧈(⊡⊚⇌⊞=.⇡4) ⧈(⊡⊚⊞=.⇡4),,4_4
  +∩/+⊃(≡≍ ¤"XMAS"|≡≍ ¤"SAMX")
)

PartOne ← +⊃V W

ETwo ← $ .M.S......
       $ ..A..MSMS.
       $ .M.S.MAA..
       $ ..A.ASMSM.
       $ .M.S.M....
       $ ..........
       $ S.S.S.S.S.
       $ .A.A.A.A..
       $ M.M.M.M.M.
       $ ..........

Targets ← (
  ["M.M" ".A." "S.S"]
  ["M.S" ".A." "M.S"]
  ["S.M" ".A." "S.M"]
  ["S.S" ".A." "M.M"]
  [∩₄Cross])

PartTwo ← /+♭⊞≍Targets♭₂ ⧈Cross 3_3

Lines E
