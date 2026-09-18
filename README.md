# yc0nfig

> **yc0nfig** is the project name (branding). The command, package name and
> code namespace is **`yconfig`** — see `docs/branding.md`.

`yconfig` is a successor to Kconfig for the Linux kernel: a parser,
dependency engine, and output generator, designed with full backward
compatibility with the existing `Kconfig` tree in the kernel.

## Project structure

- `core/` — the core: lexer, parser, AST, symbol table, expression
  evaluation, Kconfig compatibility. Pure C, zero external dependencies.
  This is the part intended as a candidate for inclusion in the Linux
  kernel tree.
- `backend/` — output generators (`.config`, `autoconf.h`, Makefile fragments).
- `frontend/` — CLI, TUI (ncurses), and GUI (Qt/C++).
- `services/` — optional microservices in other languages (Rust solver,
  Python migrator, Go linter), communicating over IPC (see `proto/`).
- `proto/` — IPC contract between `core` and `services/`.
- `tests/` — integration tests for the full pipeline.
- `docs/` — design and architecture documentation.

## Status

Project is in the initial structure phase. See `docs/design/` for details
on solver architecture and Kbuild integration.

## License

GPL-2.0-only (required for kernel compatibility) — see `LICENSE`.
