#!/bin/bash

DIR=$(pwd)

mkdir ~/bin > /dev/null 2>&1

chmod +x ${DIR}/tmbim-util ${DIR}/if-cfg ${DIR}/dh-util

ln -sf ${DIR}/tmbim-util ~/bin/tmbim-util
ln -sf ${DIR}/tmbim-util-completion.bash ~/.local/share/bash-completion/completions/tmbim-util

ln -sf ${DIR}/if-cfg ~/bin/if-cfg
ln -sf ${DIR}/if-cfg-completion.bash ~/.local/share/bash-completion/completions/if-cfg

ln -sf ${DIR}/dh-util ~/bin/dh-util
ln -sf ${DIR}/dh-util-completion.bash ~/.local/share/bash-completion/completions/dh-util
