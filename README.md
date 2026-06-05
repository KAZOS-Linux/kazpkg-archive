# kazpkg-archive

Portable Debian Package Archive Manager

<p align="center">
  <a href="README.en.md">🇺🇸 English Documentation</a> |
  <a href="README.fa.md">🇮🇷 مستندات فارسی</a>
</p>

---

## What is kazpkg-archive?

kazpkg-archive is a lightweight Bash-based tool designed to create, maintain, and update portable Debian package archives.

Unlike traditional repository managers, kazpkg-archive focuses on:

- Package collection
- Portable archives
- Easy updates
- Simple workflows
- No database
- No complex repository setup

---

## Features

✔ Add packages from Debian mirrors

✔ Add packages from direct URLs

✔ Add local `.deb` packages

✔ Dynamic package retrieval using `pointer_file_url`

✔ Portable ZIP archives

✔ Update packages inside archives

✔ Remove packages from archives

✔ Pool-inspired package organization

---

## Example Archive Structure

![Archive Structure](docs/images/archive-layout.png)

```text
package.zip
├── b
│   └── base-files_14.2_arm64.deb
├── h
│   └── hello_2.10-5_amd64.deb
├── n
│   └── nano_8.4-1+deb13u1_amd64.deb
└── v
    └── vim_9.1_amd64.deb
```

---

## Quick Example

```bash
source .engine

set:sources_list "deb https://deb.debian.org/debian/ trixie main"

pkg:mirror hello
pkg:mirror vim

archive package.zip
```

---

## Status

Current Status: **Beta**

---

## Documentation

- 🇺🇸 English → [README.en.md](README.en.md)
- 🇮🇷 فارسی → [README.fa.md](README.fa.md)

---

## License

GPLv3
