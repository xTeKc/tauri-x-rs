# starts desktop app and web app
dw:
	clear && cargo tauri dev

# starts android app
a:
	clear && cargo tauri android init

# starts ios app
i:
	clear && cargo tauri ios init

# removes target/ dir, Cargo.lock file and dist/ dir, for a clean start
c:
	clear && rm -rf target/ && rm Cargo.lock && rm -rf dist/