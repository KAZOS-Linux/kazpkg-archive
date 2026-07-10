# kazpkg-archive

<img width="1536" height="1024" alt="file_0000000089a4720c8ca2e37b8fc73a9a" src="https://github.com/user-attachments/assets/5350bdeb-f668-4e36-ae12-46f56d25f619" />

Portable Debian Package Archive Manager

<p align="center">
  <a href="https://wiki.kazos.ir/doku.php?id=en:list">🇺🇸 English Documentation</a> |
  <a href="https://wiki.kazos.ir/doku.php?id=fa:list">🇮🇷 مستندات فارسی</a>
</p>

---

## What is kazpkg-archive?

**kazpkg-archive** is a lightweight Bash framework for building, managing, and distributing portable Debian package archives.

It simplifies package collection from Debian repositories, direct URLs, or local `.deb` files while providing dependency resolution, archive management, and metadata tracking.

Instead of creating a complete Debian repository, **kazpkg-archive** focuses on building self-contained package archives that can be easily updated, redistributed, and integrated into projects such as **kazbuild-rootfs**.

---

## Features

✔ Debian mirror management

✔ Fast package indexing with SQLite

✔ Automatic dependency resolution

✔ Download packages directly from Debian mirrors

✔ Download packages from direct URLs

✔ Import local `.deb` packages

✔ Dynamic package retrieval using `pointer_file_url`

✔ Portable ZIP archive generation

✔ Archive metadata management

✔ Add packages to existing archives

✔ Remove packages from existing archives

✔ Incremental archive updates

✔ Pool-inspired package organization

✔ Multi-architecture support (x86_64, i686, armv7, aarch64)

✔ Lightweight Bash implementation

✔ Designed for integration with **kazbuild-rootfs**

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

## Documentation

- 🇺🇸 English → [README.en.md](README.en.md)
- 🇮🇷 فارسی → [README.fa.md](README.fa.md)

## Star History

<a href="https://www.star-history.com/?repos=KAZOS-Linux%2Fkazpkg-archive&type=date&legend=bottom-right">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=KAZOS-Linux/kazpkg-archive&type=date&theme=dark&legend=top-left" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=KAZOS-Linux/kazpkg-archive&type=date&legend=top-left" />
   <img alt="Star History Chart" src="https://api.star-history.com/chart?repos=KAZOS-Linux/kazpkg-archive&type=date&legend=top-left" />
 </picture>
</a>

