#!/bin/bash

if [[ -z $(pactl list modules | grep -E module-combine-sink) ]]; then
  pactl load-module module-combine-sink
  echo "Module 'Combine-Sink' Started"
else
  pactl unload-module 536870913 && pactl load-module module-combine-sink
  echo "Module 'Combine-Sink' Restarted"
fi
