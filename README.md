# Dockerfile with sudo user

Dockerfile for ubuntu image with user with sudo privilege without password.


### build
```
docker build --tag ubuntu_with_sudo_user . \
		--build-arg USERNAME=<user_name> \
		--build-arg GROUPNAME=<user_name> \
		--build-arg UID=(id -u) \
		--build-arg GID=(id -g) \
		--build-arg PASSWORD=tmp
```

### run
```
docker run --rm -it ubuntu_with_sudo_user
```
