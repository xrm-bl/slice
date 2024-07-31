SECONDS=0

rm -rf no
rm -rf it
mkdir it
sliceOSP3 ro_222 - 40 0 it
mkdir no
slice.No it no -r > no.sh
csh no.sh
echo 30 20 40 10 temp | sliceBEVM.DS no - 1 1 1
bevm.WD temp.d.tif temp.w.tif
bevmGS temp.s.tif temp.l.tif 1 25 0 temp.ls.tif
tiffmask temp.e.tif 1 temp.ls.tif -0 temp.lse.tif
tiffmask temp.w.tif 1 temp.lse.tif -255 result.tif

run_time=$SECONDS
echo $run_time

open result.tif
