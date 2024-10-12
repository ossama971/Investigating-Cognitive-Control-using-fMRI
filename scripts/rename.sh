#!/bin/bash
for id in `seq -w 1 26`; do
    subj="sub-$id"
    echo "===> Starting renaming of $subj"
    echo
    cd $subj
    cd func

    if [ -e "${subj}_task-flanker_run-1_bold.feat" ]; then
        mv "${subj}_task-flanker_run-1_bold.feat" "run1.feat"
    fi

    if [ -e "${subj}_task-flanker_run-2_bold.feat" ]; then
        echo "===> RENAME IN $subj"
        echo
        mv "${subj}_task-flanker_run-2_bold.feat" "run2.feat"
    fi

    cd ..
    cd ..
done