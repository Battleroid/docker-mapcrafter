# docker-mapcrafter

Sample usage: 

```bash
$ docker run --rm -it -v /path/to/worlds/and/conf:/data mapcrafter -c /data/render.conf
```

Your should specify your output directory for builds to be a local directory (e.g. `build`). You can also mount say your web root (e.g. `/var/www/html`) inside the container as `/output` and have the output directory point to `/output`.

If you find that the permissions are incorrect you can use `-u` with your user's user/group id to correct them.

You can also pull the image with `$ docker pull battleroid/mapcrafter`.
