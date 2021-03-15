DIRNAME="campip"
mkdir -p /mnt/disk/$DIRNAME
chcon -Rt svirt_sandbox_file_t /mnt/disk/$DIRNAME
chmod 777/mnt/disk/$DIRNAME

deploy:
	k apply -f app.yaml
