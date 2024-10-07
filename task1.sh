#!/bin/bash

ps aux | grep '[i]nfinite.sh' | awk '{print $2}' | xargs kill