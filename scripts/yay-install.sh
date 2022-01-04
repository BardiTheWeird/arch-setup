mkdir .tmp
cd .tmp

if [[ -d yay ]]
then
	echo "Found an older yay repository. Cleaning it..."
	rm -rf yay
fi

git clone https://aur.archlinux.org/yay.git && \
cd yay && \
makepkg -si && \
cd ../../
