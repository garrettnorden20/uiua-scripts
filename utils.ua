ReadArg     ← |1 °□˜⊡&args
PadDateTime ← ⍚(⬚@0↙¯⊙°⋕) [4 2 2 2 2 2] # note taking *that* amount from end (via negative), filling rest with 0. 
FormatDate  ← °[°$"_-_-_ _:_:_"]        # cool way to pack things into an array! 

FromDecimalDay ← ⌊⊂⊃(∘|◿⊙×⟜\×[24 60 60 1000]) # 1.1982875

⍚(⬚@0↙¯⊙°⋕) [2 2 2 2 2] FromDecimalDay 1.1982875
