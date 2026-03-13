# BentoPDF

A privacy-first PDF toolkit with 50+ tools — all processing happens directly in your browser. Files never leave your device or touch any server.

## What can it do?

- Merge, split, compress, and rotate PDFs
- Convert PDFs to/from Word, Excel, PowerPoint, images
- OCR (optical character recognition) on scanned documents
- Sign, annotate, redact, and add watermarks
- Edit PDF metadata and organize pages
- Password protect and unlock PDFs
- And much more — 50+ tools in total

## How to use

1. Start the add-on.
2. Click **Open Web UI** or go to `http://<your-HA-IP>:8080`.
3. Pick a tool and drop your files in — no setup needed.

## Privacy

Everything runs in-browser via WebAssembly. No file is ever uploaded to a server. This add-on is just an nginx container serving the static web app.

## Configuration

| Option | Default | Description |
|--------|---------|-------------|
| `log_level` | `info` | Log verbosity: `info`, `debug`, `warn`, `error` |

## Support

- Add-on issues: [github.com/ToledoEM/BentoPDF_HA_app](https://github.com/ToledoEM/BentoPDF_HA_app/issues)
- BentoPDF upstream: [github.com/alam00000/bentopdf](https://github.com/alam00000/bentopdf)
