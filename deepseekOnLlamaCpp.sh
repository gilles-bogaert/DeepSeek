#!/bin/bash

git clone https://github.com/ggerganov/llama.cpp.git

cmake -B build
cmake --build build --config Release
wget -P models/ https://huggingface.co/unsloth/DeepSeek-R1-Distill-Qwen-1.5B-GGUF/resolve/main/DeepSeek-R1-Distill-Qwen-1.5B-Q8_0.gguf
./main -m DeepSeek-R1-Distill-Qwen-1.5B-Q8_0.gguf
