PARTICIPANT & SESSION NAMING:
=============================

I prefer to organize my participant data using a single level of hierarchy that
exposes both the participant identifier and the session identifier (pXXXsXX).
This makes it easy to find all sessions belonging to a given participant, and
session presence/absence is visible without traversing into nested folders.

You'll note that padding with leading zeros helps filesystems and spreadsheets
sort these IDs in a reasonable way. "pXXXsXX" allows for 1000 participants with
100 sessions each. One hundred sessions might seem like overkill, but if you
just use pXXXsX, you only have access to 10 sessions per participant, and it's
easy to imagine paradigms that could exceed 10 sessions.

BLINDING:

If you don't need to be blind to participant order and session order, this
scheme conveniently exposes order information:

1st participant's 1st session: p000s00
1st participant's 2nd session: p000s01
2nd participant's 1st session: p001s00
2nd participant's 2nd session: p001s01

Do you need to be blind to participant order and/or session order, but want to
keep the visible mapping between participant and session? Use the pXXXsXX
scheme, but remove order information by pseudorandomly assigning the numbers in
a protected key somewhere, e.g.,

1st participant's 1st session: p483s62
1st participant's 2nd session: p483s21
2nd participant's 1st session: p117s83
2nd participant's 2nd session: p117s92

Do you need to be blind to order AND the mapping between session and
participant? Then protect those mappings in a key and name with sXXXXX for 10^6
total sessions, e.g., 

1st participant's 1st session: s359612
1st participant's 2nd session: s938146
2nd participant's 1st session: s213449
2nd participant's 2nd session: s299595
