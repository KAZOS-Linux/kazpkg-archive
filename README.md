# kazpkg-archive

<img width="1254" height="1254" alt="info" src="https://github.com/user-attachments/assets/50071352-f5de-47f0-b784-4cde0c4ac263" />


Portable Debian Package Archive Manager

<p align="center">
  <a href="https://wiki.kazos.ir/doku.php?id=en:mainpage">🇺🇸 English Documentation</a> |
  <a href="https://wiki.kazos.ir/doku.php?id=fa:mainpage">🇮🇷 مستندات فارسی</a>
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

