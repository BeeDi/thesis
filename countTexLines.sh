#!/bin/bash
find CONTENU -print | egrep '\.tex' | xargs cat | sed '/^\s*$/d' | sed '/^%.*$/d' | sed '/^.begin.*$/d' | sed '/^.centering.*$/d' | sed '/^.include.*$/d' | sed '/^.caption.*$/d' | sed '/^.label.*$/d' | sed '/^.addcontent.*$/d' | sed '/^.end.*$/d' | wc -l
#sed '/^.sub.*section.*$/d' | sed '/^.section.*$/d' | sed '/^.chapter.*$/d' | sed '/^.section.*$/d'