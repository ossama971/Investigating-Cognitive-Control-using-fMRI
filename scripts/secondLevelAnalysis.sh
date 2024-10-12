#!/bin/bash
for id in `seq -w 1 26` ; do
    subj="sub-$id"
    echo "===> Starting processing of $subj"
    echo
    cd $subj

        # Copy the design files into the subject directory, and then
        # change “sub-08” to the current subject number
        cp ../design_run1.fsf .
        cp ../design_run2.fsf .

        # Note that we are using the | character to delimit the patterns
        # instead of the usual / character because there are / characters
        # in the pattern.
 	sed -i.bak "s|sub-01|${subj}|g" design_run1.fsf
	sed -i.bak "s|sub-01|${subj}|g" design_run2.fsf


        # Now everything is set up to run feat
        echo "===> Starting feat for run 1"
        feat design_run1.fsf
        echo "===> Starting feat for run 2"
        feat design_run2.fsf
                echo

    # Go back to the directory containing all of the subjects, and repeat the loop
    cd ..
done