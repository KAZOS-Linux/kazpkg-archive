<div dir="ltr">

# 🚀 kazpkg-archive


## 📝 Introduction

Introducing **kazpkg-archive** – a lightweight Bash-based engine designed for **creating, maintaining, and updating portable archives** of Debian packages.

This tool allows you to easily:

- Store  
- Transfer  
- Add or remove  
- Update  

a collection of packages without needing a database or complex repositories.

---

## ✨ Features

- Add a package from a local `.deb` file  
- Fetch a package from a direct URL  
- Fetch a package from Debian mirrors  
- Support for `pointer_file_url` for dynamic versions  
- Generate a portable ZIP archive  
- Remove packages from the archive  
- Update packages in the archive  
- Pool-like directory structure  
- No database required  
- No extra metadata needed  

---

## ⚡ Quick Start

### Prerequisites

```bash
sudo apt update
sudo apt install -y bash curl zip unzip tree
```

---

### Load the Engine

First, create a script file (e.g., `test.sh`) and source the engine:

```bash
source .engine
```

> 💡 **Note:** The engine must be loaded before any other functions.

---

### Core Functions

#### Add a Local Package

```bash
pkg:debfile /path/to/package.deb
```

#### Add a Package from the Internet

```bash
pkg:url https://example.com/package.deb
```

#### Set a Debian Mirror

```bash
set:sources_list "deb https://deb.debian.org/debian/ trixie main"
```

#### Fetch a Package from a Mirror

```bash
pkg:mirror hello
```

> ⚠️ Make sure `sources.list` is set before using this.

#### Use a Dynamic Version Pointer File

```bash
basefile:pointer_file_url https://example.com/last_version
```

#### Build the Archive

```bash
archive package.zip
```

---

### Full Script Example

```bash
#!/bin/bash
source .engine

clean

set:sources_list "deb https://deb.debian.org/debian/ trixie main"
pkg:mirror hello
pkg:mirror featherpad
pkg:mirror vim
pkg:mirror nano

basefile:pointer_file_url https://kazos-linux.github.io/base-file/last_version

create_archive
```

---
## 🗂 The Exciting Part: archive-ctrl (Archive Management)

The `archive-ctrl` tool is designed for **editing and updating archives**.

---

### Show Archive Contents

```bash
./archive-ctrl package.zip -l
```

> Displays the list of packages along with their categorized paths.

---

### Remove a Package from the Archive

```bash
./archive-ctrl package.zip -d path/to/package.deb
```

> The `path/to/package.deb` must exactly match the output from `-l`.

---

### Update Packages

You can update packages using any of the following functions:

#### Using a Mirror

```bash
./archive-ctrl package.zip -u pkg:mirror vim
```

> The `vim` package is downloaded from the Debian mirror and replaces the old version in the archive.

#### Using a Direct URL

```bash
./archive-ctrl package.zip -u pkg:url https://example.com/package.deb
```

> The package is downloaded from the direct URL and updated.

#### Using a Local File

```bash
./archive-ctrl package.zip -u pkg:debfile /path/to/package.deb
```

> The local package replaces the existing version in the archive.

#### Using pointer_file_url

```bash
./archive-ctrl package.zip -u basefile:pointer_file_url https://example.com/last_version
```

> The latest version specified in the pointer file is downloaded and replaced.

---

## 🎯 Project Philosophy

This project is designed for **managing a collection of Debian packages**, not for building a full repository.

**Main goals:**

- 📦 Portability  
- ⚡ Simplicity  
- 🛠 Easy maintenance  
- 🔄 Fast updates  
- ❌ No dependency on complex structures or databases  

---

</div>
```
