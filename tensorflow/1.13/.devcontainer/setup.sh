#!/bin/bash
mamba init -q
mamba update python -qy
mamba install ruff -qy
mamba update -qy --all
mamba clean -qafy