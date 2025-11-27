# currently just makes the duck grey
LumCoeffs ← [0.299 0.587 0.114]
ReadIn    ← ⌝img "png" &frab
SaveOut   ← &fwa⊃(∘|img⊙⋅∘ "png")

ReadIn "duck.png"
≡₁(⊂⊃(↯[3]/+×LumCoeffs↙₃|↙₋₁)) # make it grey
SaveOut "greyduck.png"

# just for testin
Example ← [
  [10_20_30_255 40_50_60_255 70_80_90_255 100_110_120_255]
  [130_140_150_255 160_170_180_255 190_200_210_255 220_230_240_255]
  [15_45_75_128 30_60_90_128 45_90_135_128 60_120_180_128]
  [200_40_80_255 150_30_60_255 100_20_40_255 50_10_20_255]
]
