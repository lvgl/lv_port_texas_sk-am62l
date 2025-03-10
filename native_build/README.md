# Speed Up Build With Native Cross-Compilation

If you only need to use the FBDEV driver, you can
speed up compile time by *not* emulating ARM64 in
Docker. Instead, it will use your native
architecture in Docker and cross compile with
`aarch64-linux-gnu-gcc`.
