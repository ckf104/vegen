set -x
set -e
for result in $(echo results-*)
do
	cd $result
	for compiler in $(ls .)
	do
		cd $compiler
		for runsh in $(ls runall_*)
		do
			./$runsh
		done
		cd ..
	done
	cd ..
done


