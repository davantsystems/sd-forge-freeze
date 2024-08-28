#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
#install_dir="/home/$(whoami)"

# Name of the subdirectory
clone_dir="davant-forge"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
# Reference: https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Command-Line-Arguments-and-Settings
# --api | Enables API
# --listen | Enables listening for remote connections
# --skip-torch-cuda-test | Skips Torch's CUDA test as no NVIDIA GPU is available
# --use-cpu interrogate | Use CPU for interrogation (options: all, sd, interrogate, gfpgan, bsrgan, esrgan, scunet, codeformer)
# --skip-version-check | Torch version intentionally doesn't match, skip version check
# --no-hashing | Disable SHA-256 hashing of checkpoints to help loading performance
# --skip-python-version-check | Do not check versions of Python.
# --no-prompt-history | Disable read prompt from last generation feature: disables --data-path/params.txt

# Defaults
# --ckpt-dir "models/Stable-diffusion"
# --lora-dir "models/lora"
# --embeddings-dir "embeddings"
# --controlnet-dir "models/ControlNet"

export COMMANDLINE_ARGS="\
--api \
--api-server-stop \
--listen \
--use-cpu interrogate \
--skip-torch-cuda-test \
--ckpt-dir '../../1_StableDiffusion_models' \
--lora-dir '../../3_LoRA' \
--embeddings-dir '../../4_Embeddings' \
--ui-settings-file config-custom.json \
"

# python3 executable
#python_cmd="python3"

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export CODEFORMER_COMMIT_HASH=""
#export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################
