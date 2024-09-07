set -e
set -x
cmake -DCMAKE_BUILD_TYPE=Release -DGGML_CUDA=True -DGGML_USE_CUDA=True .. && make -j 16
./bin/sense-voice-main -m /root/autodl-tmp/SenseVoiceGGUF/gguf-fp16-sense-voice-small.bin ../zh.wav  -t 4
