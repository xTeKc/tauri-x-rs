# starts desktop app and web app
dw:
	clear && cd demo && cargo tauri dev

# starts android app
a:
	clear && cd demo && cargo tauri android init

# starts ios app
i:
	clear && cd demo && cargo tauri ios init

# removes target/ dir, Cargo.lock file and dist/ dir, for a clean start
c:
	clear && cd demo && rm -rf target/ && rm Cargo.lock && rm -rf dist/