cd /etc/nixos/
files=( "configuration" "firewall" "kernel" "nvidia" "user" )
for i in ${files[@]}
do
  sudo ln -s ~/github/nixos-config/$i.nix .
done
