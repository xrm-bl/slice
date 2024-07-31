SECONDS=0

rm -rf nsx
mkdir nsx

slice_NSX ro_444 - 1 1 1 nsx

run_time=$SECONDS
echo $run_time
