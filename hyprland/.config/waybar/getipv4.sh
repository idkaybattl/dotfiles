#!/bin/bash
ip -4 addr show wlp9s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'
