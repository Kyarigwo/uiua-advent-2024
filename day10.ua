# Experimental!
I ← &fras "day-10-input.txt"

$ 89010123
$ 78121874
$ 87430965
$ 96549874
$ 45678903
$ 32019012
$ 01329801
$ 10456732
E         ←
Map       ← $Map ⊜≡⋕⊸≠@\n
Dirs      ← [0_¯1 ¯1_0 0_1 1_0]
ValidDirs ← =-1⊡ +Dirs¤◠⊡ 1_1
DirTable  ← ⊡⊞⊟.+1⇡-2⊸⧻⬚¯2⧈ValidDirs 3_3

Setup ← ⊃(⊚=0|¤ DirTable|¤)
Trail ← ⊙◌ path(▽⊃(⊡|+Dirs¤)|=9 ⊡ ⊙⋅∘)
Find  ← ◴≡(⊣°□) Trail

PartOne ← /+≡(⧻Find) Setup
PartTwo ← /+≡(⧻ Trail)Setup
