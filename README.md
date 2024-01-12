```
root@Ubuntu:/home/docker# sudo apt-get install docker-compose-plugin
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
docker-compose-plugin is already the newest version (2.21.0-1~ubuntu.22.04~jammy).
The following packages were automatically installed and are no longer required:
  apg gnome-control-center-faces gnome-online-accounts libcolord-gtk1
  libfreerdp-server2-2 libgsound0 libgssdp-1.2-0 libgupnp-1.2-1
  libgupnp-av-1.0-3 libgupnp-dlna-2.0-4 libntfs-3g89 librygel-core-2.6-2
  librygel-db-2.6-2 librygel-renderer-2.6-2 librygel-server-2.6-2
  libsdl-ttf2.0-0 libvpx6 mobile-broadband-provider-info network-manager-gnome
  python3-macaroonbakery python3-protobuf python3-pymacaroons python3-rfc3339
  rygel
Use 'sudo apt autoremove' to remove them.
0 upgraded, 0 newly installed, 0 to remove and 29 not upgraded.




root@Ubuntu:/# cd /home/
root@Ubuntu:/home# mkdir docker
root@Ubuntu:/home# cd docker/
root@Ubuntu:/home/docker# vi Dockerfile
root@Ubuntu:/home/docker# vi custom-page.html
root@Ubuntu:/home/docker# vi nginx.conf
root@Ubuntu:/home/docker# docker build -t custom-nginx .
[+] Building 9.0s (8/8) FINISHED                                 docker:default
 => [internal] load build definition from Dockerfile                       0.0s
 => => transferring dockerfile: 381B                                       0.0s
 => [internal] load .dockerignore                                          0.0s
 => => transferring context: 2B                                            0.0s
 => [internal] load metadata for docker.io/library/nginx:alpine            5.2s
 => [1/3] FROM docker.io/library/nginx:alpine@sha256:a59278fd22a9d411121e  3.7s                                        0.0s
 => [2/3] COPY custom-page.html /usr/share/nginx/html/                     0.1s
 => [3/3] COPY nginx.conf /etc/nginx/nginx.conf                            0.0s
 => exporting to image                                                     0.0s
 => => exporting layers                                                    0.0s
 => => writing image sha256:61cc4dc171cd72169fb9425c6d547b277ec813194e23b  0.0s
 => => naming to docker.io/library/custom-nginx                            0.0s
 
root@Ubuntu:/home/docker# docker run -p 80:80 custom-nginx
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
172.17.0.1 - - [12/Jan/2024:13:39:47 +0000] "GET / HTTP/1.1" 200 181 "-" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0"
```
