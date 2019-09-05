#!/bin/bash
# wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/mrbs-install-configure.sh && sh ./mrbs-install-configure.sh  && rm ./mrbs-install-configure.sh

# LAMP & MRBS
wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/setup-mrbs-ubuntu18.sh && sh ./setup-mrbs-ubuntu18.sh && rm ./setup-mrbs-ubuntu18.sh
# MRBS Configuration
wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/configure-mrbs-ies.sh && sh ./configure-mrbs-ies.sh && rm ./configure-mrbs-ies.sh
# Solve Locale es_ES Problems
wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/locale.sh && sh ./locale.sh && rm ./locale.sh
