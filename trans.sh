python3 translate.py -batch_size 32 \
	               -gpu 0 \
                    -beam_size 10 \
                    -model models/selection_step_110000.pt\
                    -src data/cnndm/test.txt.src \
                    -output testout/selection_step_110000.out \
                    -min_length 35 \
                    -verbose \
                    -stepwise_penalty \
                    -coverage_penalty summary \
                    -beta 5 \
                    -length_penalty wu \
                    -alpha 0.9 \
                    -verbose \
                    -block_ngram_repeat 3 \
                    -ignore_when_blocking "." "</t>" "<t>"