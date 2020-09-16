# how to setup
```bash
./build.sh
sudo cp 99-realsense-d435i.rules /etc/udev/rules.d/
```

# update realsense hardware
on host

```bash
cd librealsense
mkdir build
cd build
cmake ..
make -j $(nproc)
sudo ./tools/fw-update/rs-fw-update -f ./common/fw/D4XX_FW_Image-5.12.5.0.bin
```
