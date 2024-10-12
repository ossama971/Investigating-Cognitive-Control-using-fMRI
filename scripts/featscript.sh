#!/bin/bash
for id in `seq -w 1 26`; do
    subj="sub-$id"
    echo "===> Starting processing for $subj"
    echo
    cd $subj

    # Get a copy of the design files
    cp ../des_run1.fsf .
    cp ../des_run2.fsf .

    # Check for bet of f=0.2
    if [ ! -f anat/${subj}_T1w_brainf02.nii.gz ]
    then
        bet2 anat/${subj}_T1w.nii.gz anat/${subj}_T1w_brainf02.nii.gz -f 0.2
    fi

    # Change the subject number
    sed -i.bak "s|sub-01|${subj}|g" des_run1.fsf
    sed -i.bak "s|sub-01|${subj}|g" des_run2.fsf

    # Run feat
    echo "===> Starting feat for run 1"
    feat des_run1.fsf
    echo "===> Starting feat for run 2"
    feat des_run2.fsf
    echo

    echo "===> Finished processing of $subj"
    echo

    # Go back to the directory containing all of the subjects, and repeat the loop
    cd ..
done