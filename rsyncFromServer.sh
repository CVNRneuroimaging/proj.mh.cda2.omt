#!/bin/sh

# rsync relevant /data/birc/${site}/${proj}/ subdirectories from the server:

#for dir in 02.fmriTaskProgramming 03.FmriRegressors 04.Grants 05.Scripts 06.acqfiles 08.QC; do 
#   rsync -r --progress \
#   stowler@qball3.birc.emory.edu:/data/birc/Atlanta/OMT/${dir} \
#   /data/birc/Atlanta/OMT/
#done

rsync -r --progress \
--exclude 09.SingleSessionAnalysis/* \
stowler@qball3.birc.emory.edu:/data/birc/Atlanta/OMT \
/data/birc/Atlanta/
