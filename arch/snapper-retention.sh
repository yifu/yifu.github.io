#!/bin/bash
# Snapper retention for the root and home configs (guide 1, section 14)
sudo snapper -c root set-config \
  TIMELINE_LIMIT_HOURLY=10 TIMELINE_LIMIT_DAILY=7 TIMELINE_LIMIT_WEEKLY=8 \
  TIMELINE_LIMIT_MONTHLY=12 TIMELINE_LIMIT_YEARLY=0 \
  NUMBER_LIMIT=40 NUMBER_LIMIT_IMPORTANT=20
sudo snapper -c home set-config \
  TIMELINE_LIMIT_HOURLY=10 TIMELINE_LIMIT_DAILY=7 TIMELINE_LIMIT_WEEKLY=8 \
  TIMELINE_LIMIT_MONTHLY=12 TIMELINE_LIMIT_YEARLY=0
sudo snapper -c root get-config
sudo snapper -c home get-config
