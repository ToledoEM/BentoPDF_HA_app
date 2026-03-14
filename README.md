# BentoPDF Home Assistant Add-on

A Home Assistant OS add-on that packages [BentoPDF](https://github.com/alam00000/bentopdf) v2.5.0 — a privacy-first, client-side PDF toolkit with 50+ tools. All PDF processing happens in the browser; files never leave your device.

## Installation

1. In Home Assistant, go to **Settings → Add-ons → Add-on Store**.
2. Open the menu (`...`) → **Repositories**.
3. Add this repository URL: `https://github.com/ToledoEM/BentoPDF_HA_app`
4. Refresh the Add-on Store and install **BentoPDF**.
5. Start the add-on and open the web UI at `https://<HA_IP>:8443`.

## Local Add-on Development (on HA Host)

1. Copy `bentopdf/` into `/addons/bentopdf` on the HA host.
2. In Add-on Store menu (`...`), click **Check for updates**.
3. Install and run the local add-on.

## Configuration Options

| Option | Default | Description |
|--------|---------|-------------|
| `log_level` | `info` | Log verbosity: `info`, `debug`, `warn`, `error` |

## Repository Layout

- `repository.yaml` — HA add-on repository manifest
- `bentopdf/` — Add-on package
  - `config.yaml` — Add-on metadata, schema, ports
  - `build.yaml` — Base image references per architecture
  - `Dockerfile` — Container build
  - `run.sh` — Startup script
  - `rootfs/` — s6-overlay service definitions

## Features

- 50+ PDF tools (merge, split, compress, convert, OCR, sign, redact, and more)
- Fully client-side — no data sent to any server
- HTTPS on port `8443` (enables LibreOffice WASM / office file conversion on LAN IPs)
- HTTP on port `8080` (watchdog only — redirects to HTTPS)
- Supports `amd64` and `aarch64`

## Browser Security Warning

On first access, browsers will show a "potential security risk" warning. This is expected — the add-on uses a self-signed TLS certificate generated locally on your HA instance. Click **Advanced → Accept / Proceed** to continue. See [`bentopdf/DOCS.md`](bentopdf/DOCS.md) for the full explanation.

## License

MIT. Upstream BentoPDF is licensed under AGPL-3.0.
