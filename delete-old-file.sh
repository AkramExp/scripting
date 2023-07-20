#!/bin/bash
# Author: Akram Ali
# Description: Delete files older than 90 days

find -mtime +90 -exec rm {} \;
