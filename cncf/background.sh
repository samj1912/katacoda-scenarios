#!/bin/bash
(curl -sSL "https://github.com/buildpacks/pack/releases/download/v0.19.0/pack-v0.19.0-linux.tgz" | sudo tar -C /usr/local/bin/ --no-same-owner -xzv pack)
git clone https://github.com/paketo-buildpacks/samples
pack config pull-policy if-not-present
pack config default-builder paketobuildpacks/builder:tiny
sudo touch /opt/setup-done
docker pull paketobuildpacks/builder:tiny
docker pull buildpacksio/lifecycle
