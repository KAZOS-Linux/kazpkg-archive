<div dir="rtl">

# 🚀 kazpkg-archive


## 📝 معرفی

معرفی میکنم **kazpkg-archive** یک موتور سبک مبتنی بر Bash است که برای **ساخت، نگهداری و به‌روزرسانی آرشیوهای قابل حمل** از بسته‌های Debian طراحی شده است.

این ابزار به شما اجازه می‌دهد مجموعه‌ای از بسته‌ها را به سادگی:

- ذخیره کنید  
- منتقل کنید  
- اضافه یا حذف کنید  
- و به‌روزرسانی کنید  

بدون نیاز به پایگاه داده یا مخازن پیچیده.

---

## ✨ قابلیت‌ها

- افزودن بسته از فایل محلی `.deb`  
- دریافت بسته از URL مستقیم  
- دریافت بسته از میرورهای Debian  
- پشتیبانی از `pointer_file_url` برای نسخه پویا  
- تولید آرشیو ZIP قابل حمل  
- حذف بسته‌ها از آرشیو  
- به‌روزرسانی بسته‌ها در آرشیو  
- ساختار دسته‌بندی مشابه Pool  
- بدون نیاز به پایگاه داده  
- بدون نیاز به متادیتای اضافی  

---

## ⚡ شروع سریع

### پیش‌نیازها

```bash
sudo apt update
sudo apt install -y bash curl zip unzip tree
```

---

### بارگذاری موتور

ابتدا یک فایل اسکریپت بسازید (مثلاً `test.sh`) و موتور را فراخوانی کنید:

```bash
source .engine
```

> 💡 **نکته:** موتور باید قبل از هر تابع دیگری بارگذاری شود.

---

### توابع اصلی

#### افزودن بسته محلی

```bash
pkg:debfile /path/to/package.deb
```

#### افزودن بسته از اینترنت

```bash
pkg:url https://example.com/package.deb
```

#### تنظیم میرور Debian

```bash
set:sources_list "deb https://deb.debian.org/debian/ trixie main"
```

#### دریافت بسته از میرور

```bash
pkg:mirror hello
```

> ⚠️ حتماً قبل از استفاده، `sources.list` تنظیم شده باشد.

#### استفاده از فایل نسخه پویا

```bash
basefile:pointer_file_url https://example.com/last_version
```

#### ساخت آرشیو

```bash
archive package.zip
```

---

### نمونه کامل اسکریپت

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
## 🗂 قسمت جذاب archive-ctrl (مدیریت آرشیو)

ابزار `archive-ctrl` برای **ویرایش و به‌روزرسانی آرشیوها** طراحی شده است.  

---

### نمایش محتویات آرشیو

```bash
./archive-ctrl package.zip -l
```

> لیست بسته‌های موجود همراه با مسیر دسته‌بندی آن‌ها نمایش داده می‌شود.

---

### حذف بسته از آرشیو

```bash
./archive-ctrl package.zip -d path/to/package.deb
```

> مسیر `path/to/package.deb` باید دقیقا مانند خروجی `-l` وارد شود.

---

### به‌روزرسانی بسته‌ها

می‌توانید بسته‌ها را با استفاده از هر یک از توابع زیر آپدیت کنید:

#### استفاده از میرور

```bash
./archive-ctrl package.zip -u pkg:mirror vim
```

> بسته `vim` از میرور Debian دانلود و جایگزین نسخه قدیمی در آرشیو می‌شود.

#### استفاده از URL مستقیم

```bash
./archive-ctrl package.zip -u pkg:url https://example.com/package.deb
```

> بسته از آدرس مستقیم دانلود و آپدیت می‌شود.

#### استفاده از فایل محلی

```bash
./archive-ctrl package.zip -u pkg:debfile /path/to/package.deb
```

> بسته محلی جایگزین نسخه موجود در آرشیو می‌شود.

#### استفاده از pointer_file_url

```bash
./archive-ctrl package.zip -u basefile:pointer_file_url https://example.com/last_version
```

> بسته آخرین نسخه مشخص شده در فایل pointer دانلود و جایگزین می‌شود.

---

## 🎯 فلسفه پروژه

این پروژه برای **مدیریت مجموعه‌ای از بسته‌های Debian** طراحی شده است، نه ساخت یک مخزن کامل.

**هدف اصلی:**

- 📦 قابل حمل بودن  
- ⚡ سادگی  
- 🛠 نگهداری آسان  
- 🔄 به‌روزرسانی سریع  
- ❌ وابستگی به ساختارهای پیچیده و پایگاه داده  

---

</div>
