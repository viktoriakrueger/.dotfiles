# check for os type
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    CYGWIN*)    os=cygwin;;
    MINGW*)     os=mingw;;
    *)          os="UNKNOWN:${unameOut}"
esac

if [[ "$os" == "linux" ]]; then
  
  if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
  fi
elif [[ "$os" == "cygwin" ]]; then
	zsh
fi

