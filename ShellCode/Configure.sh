#!/bin/bash

#stardict dictionary
mkdir -p ~/.stardict/dic
for f in stardict*.tar.bz2; do sudo tar -jxvf $f -C ~/.stardict/dic; done





