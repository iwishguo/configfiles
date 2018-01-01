export PATH=$HOME/local/gcc-linaro-aarch64-linux-gnu/bin:$PATH:/sbin:/usr/sbin:$HOME/local/bin:$HOME/local/gcc-linaro-arm-linux-gnueabihf/bin:$HOME/local/scr:~/bin

#export CROSS_COMPILE=/home/gary/local/gcc-linaro-4.9-2014.11-x86_64_aarch64-elf/bin/aarch64-none-elf-

alias edk2patch='git send-email --to olivier.martin@arm.com --cc edk2-devel@lists.sourceforge.net --cc leif.lindholm@linaro.org --cc ilias.biris@linaro.org'

alias lavajob='lava-tool submit-job https://heyi-guo@validation.linaro.org/RPC2/'
alias lavajob-staging='lava-tool submit-job https://heyi.guo@staging.validation.linaro.org/RPC2/'

xset r rate 300

#export PATH=$PATH:/opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin
#export PATH=$PATH:/opt/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin

alias edk2-build="uefi-tools/uefi-build.sh -c LinaroPkg/platforms.config"
alias edk2-clean="git clean -dfx BaseTools Conf Build"
alias pc="python $HOME/git/edk2/BaseTools/Scripts/PatchCheck.py"
alias rmts="perl -i -pe 's/ *\r\n/\r\n/'"

function ff()
{
  find . -iname *$1* -print
}

