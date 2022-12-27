# starts desktop app and web app
dw:
	clear && cargo tauri dev

# starts android app
a:
	clear && cargo tauri android init

# starts ios app
i:
	clear && cargo tauri ios init

# removes: dist/ - target/ - Cargo.lock, for a clean start
c:
	clear && rm -rf dist/ && rm -rf target/ && rm Cargo.lock