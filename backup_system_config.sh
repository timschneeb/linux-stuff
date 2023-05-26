#!/bin/bash
rsync -avh --files-from="system_config_files.lst" / system_config
