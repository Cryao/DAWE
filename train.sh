cp DAC.c ./word2vec/word2vec.c
cd word2vec
make clean
make
cd ..
./word2vec/word2vec -train ./datasets/Clean-Sogou-T1.txt -output ./trainOutput/DAC_vectors.bin -cbow 0 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 30 -binary 1 -iter 1 -read-vocab ./datasets/VocabFile -read-meaning ./datasets/SememeFile -read-sense ./datasets/Word_Sense_Sememe_File -min-count 1 -alpha 0.025
