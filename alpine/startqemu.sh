qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22,net=192.168.50.0/24,hostfwd=tcp::9000-:9000,hostfwd=tcp::5222-:5222,hostfwd=tcp::5266-:5244,hostfwd=tcp::5666-:5678,hostfwd=tcp::2017-:2017,hostfwd=tcp::20170-:20170,hostfwd=tcp::20171-:20171,hostfwd=tcp::20172-:20172,hostfwd=tcp::12345-:12345,hostfwd=tcp::12346-:12346,hostfwd=tcp::2023-:2023,hostfwd=tcp::2024-:2024,hostfwd=tcp::2025-:2025,hostfwd=tcp::2026-:2026,hostfwd=tcp::2027-:2027,hostfwd=tcp::2028-:2028,hostfwd=tcp::2029-:2029,hostfwd=tcp::2030-:2030,hostfwd=tcp::2031-:2031,hostfwd=tcp::8765-:8765 -device virtio-net,netdev=n1 \
  -nographic alpine.img
