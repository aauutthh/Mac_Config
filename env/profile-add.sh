if [ -d /etc/profile.d ]; then
  exit
fi

sudo mkdir -p /etc/profile.d

sudo chmod +w /etc/profile 

cat <<'EOF' |sudo tee -a /etc/profile
if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
EOF


sudo chmod -w /etc/profile 
