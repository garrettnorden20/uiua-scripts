# get the index of the highest average of each column
Data ← [
  2_5_1_3_6
  4_3_7_2_5
  6_1_8_4_3
  5_2_6_3_7
]
Iavg ← |1 ⊢⍖˜÷⊃(≡/+|⊢△)⍉ ## 2 

Iavg Data

Step ← (
  # Calc velocity deltas
  ⤙(×⊙(
      ˙⊞- ≡⊣         # Differences
      ≡▽˙⊞≠°⊏        # Remove self
      ≡/+÷⊃(≡₁/+˙×)± # Accs
    ))
  ⍜≡⊢+ # Update velocities
  ≡\+  # Update positions
)
# ? Steps G Starts
Simulate ← ⍥⊃⟜Step⋅≡⊣ ⊙⊙(≡⊟0)
Render   ← ⬚0≡°⊚⁅ -⊸(¤¤/↧♭₂)

Render Simulate 120 20 [0_60 150_0 30_15 80_110]
≡⌞⧈(/↥♭)3_3 # Upscale
# &fwa "n-body.gif" gif 16
# &p "Wrote gif to n-body.gif"

# &runi {"mkdir" "myself"}
