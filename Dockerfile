FROM espressif/idf

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV RUSTUP_HOME=/opt/rustup
ENV CARGO_HOME=/opt/cargo
ENV IDF_TOOLS_PATH=/opt/esp/.espressif
ENV PATH=/opt/cargo/bin:/opt/rustup/bin:/opt/esp/.espressif/tools/xtensa-esp32-elf-clang/esp-12.0.1-20210823-x86_64-unknown-linux-gnu/:$PATH

WORKDIR /opt

COPY install-rust-toolchain.sh .
RUN ./install-rust-toolchain.sh

