This folder of skull-stripped T1s is specifically intended for extracted brains
in *native* space. 

Though later stages of your work are likely to use non-native-space T1s,
skull-stripped brains need to originate here in native space for two reasons:

- Skull-stripping pipelines are designed to produce their best results from
whole-head T1s that have not been molested by spatial registration. For
example, the only thing you should do to a whole-head T1 before submitting it
to FSL's bet is grossly rotate it so that the orientation of SI/AP/RL axes
match fslview's display of the MNI152 templates. This can be done via FSL's
fslreorient2std command, which doesn't perform any spatial interpolation or
otherwise alter the original intensities of the acquired anatomy.

- Many processing pipelines rely on the natively close alignment of a single
session's whole-brain T1 and other sequences acquired during that session
(i.e., no change in participant or table placement between T1 anatomic and
other acquisitions). 


Once you have generated native-space skull-stripped T1s in this folder, feel
free to transform and interpolate them as needed, just be sure to store those
results outside of this folder. Your collaborators will thank you. :)

stowler@gmail.com
