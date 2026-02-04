# To use:
# 1. Go to Gitlab job, get output as raw
#      (suffix URL with /raw)
# i.e, .../appian/dev/ae-staging/-/jobs/46436342/raw
# 2. Click CTRL-S, save as raw.txt
# 3. Upload raw.txt to this window (top right), click run
FileName   ← "execraw.txt"
ToUnix     ← °datetime⋕↘₁♭regex $$ ^(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2})
KeepIfAny  ← /↥↥↥↥⊃(◇⦷"PASSED"|◇⦷"FAILED"|◇⦷"STARTED"|◇⦷"SKIPPED")
KeepOnlyIf ← ↧¬∩⌟(/↥◇⦷)"Task" ">"
⊜□⊸≠@\n &fras FileName
▽⊸≡(/↥↧⊃(KeepIfAny|KeepOnlyIf))                           # keep lines containing these
⧈(⊓(/-≡°□|⊢) ⍚(⊃(ToUnix°□⊢|/$"_._"↙₋₂)⊏[0 2 4]⊜□⊸≠@ ))¤¤2 # nx2; [time difference; test name]. Two diff arrays
⊃(≡⊂ ∩⌞⊏⊸⍖ ∩⌞▽⊸>1|⧻)                                      # keep >1 second then sort by time; and keep length 
⊃($"_ of _ jobs took longer than 1 second" ⧻
| $"Avg. time of jobs >1 second: _ seconds"÷⧻⟜/+⊢⍉
| $"Total time taken by these jobs: _ seconds" /+⊢⍉
| ∘
)
&s &s &s &s
