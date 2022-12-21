git clone https://github.com/Spotifyd/spotifyd.git

cd $HOME/spotifyd

cargo build --release --locked --no-default-features --features="portaudio_backend"
cargo install --path . --locked --no-default-features --features="portaudio_backend"

cd $HOME
