#!/bin/bash
# wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/mrbs-install-configure.sh && sh ./mrbs-install-configure.sh  && rm ./mrbs-install-configure.sh

# LAMP & MRBS
wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/01_Ubuntu18_LAMP_mrbs.sh && sh ./01_Ubuntu18_LAMP_mrbs.sh && rm ./01_Ubuntu18_LAMP_mrbs.sh
# MRBS Configuration
wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/02_configure-mrbs-ies.sh && sh ./02_configure-mrbs-ies.sh && rm ./02_configure-mrbs-ies.sh
# Solve Locale es_ES Problems
wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/03_locale.sh && sh ./03_locale.sh && rm ./03_locale.sh
