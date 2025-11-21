# To use:
# 1. Go to Gitlab job, get output as raw (click at top, or suffix URL with /raw)
# 2. CTRL-S: save as text
# 3. put text below, and run.
ToUnix ← °datetime⋕↘₁♭regex $$ ^(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2})

KeepIfAny  ← /↥↥↥↥⊃(◇⦷"PASSED"|◇⦷"FAILED"|◇⦷"STARTED"|◇⦷"SKIPPED")
KeepOnlyIf ← ↧¬∩⌟(/↥◇⦷)"Task" ">"

⊜□⊸≠@\n &fras "raw.txt"
▽⊸≡(/↥↧⊃(KeepIfAny|KeepOnlyIf))                           # keep lines containing these
⧈(⊓(/-≡°□|⊢) ⍚(⊃(ToUnix°□⊢|/$"_._"↙₋₂)⊏[0 2 4]⊜□⊸≠@ ))¤¤2 # nx2; [time difference; test name]
∩⌞▽⊸>0                                                    # keep >0 second
≡⊂ ∩⌞⊏⊸⍖                                                  # sort by time

# >₅⧻⊜□⊸≠@ °□
