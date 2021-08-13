#!/bin/bash

usuario=$(id -un)

echo $usuario

git clone https://github.com/Racso20/Banner.git

sudo mv Banner/racso.sh /etc/$usuario.sh

if [ -f /home/$usuario/.bashrc ]; then
	echo '/etc/'$usuario'.sh' >> /home/$usuario/.bashrc
fi

if [ -f /home/$usuario/.zshrc ]; then
	echo '/etc/'$usuario'.sh' >> /home/$usuario/.zshrc
fi

if [ -f /home/$usuario/.bash_aliases ]; then
	echo "alias clear='printf \"\033c\" && /etc/$usuario.sh'" >> /home/$usuario/.bash_aliases
fi

chmod +x /etc/$usuario.sh
gedit /etc/$usuario.sh

/usr/bin/firefox https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
