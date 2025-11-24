
# 📦 Python 3.9.17 / Python 3.10.19 for CentOS 7.9

Este repositório contém três pacotes RPM compilados para **CentOS 7.9** (⚠️ podem ser compatíveis com **RHEL 7**).  
This repository contains three RPM packages built for **CentOS 7.9** (⚠️ may be compatible with **RHEL 7**).

- 🔐 `openssl11w-1.1.1w-1.el7.x86_64.rpm`  
- 🐍 `python39-3.9.17-1.el7.x86_64.rpm`  
- 🐍 `python310-3.10.19-1.el7.x86_64.rpm`

> 🎯 Foco / Focus: Python **3.8** e **3.10** (o OpenSSL 1.1.1w é apenas requisito).  
> 🎯 Focus: Python **3.8** and **3.10** (OpenSSL 1.1.1w is a prerequisite only).

---

## 🇧🇷 Instruções em Português

### ✅ Pré-requisito
Antes de instalar o OpenSSL, é recomendado instalar a glibc comum:
```bash
yum install glibc-common.x86_64
```

### 📥 Instalação local
Instale os pacotes localmente usando `yum localinstall`:
```bash
# Instale primeiro o OpenSSL
yum localinstall openssl11w-1.1.1w-1.el7.x86_64.rpm

# Depois instale o Python desejado
yum localinstall python39-3.9.17-1.el7.x86_64.rpm
yum localinstall python310-3.10.19-1.el7.x86_64.rpm
```

### 🔗 Dependências
- `openssl11w` é **pré-requisito** para as versões de Python.  
- Instale sempre o `openssl11w` antes de instalar o Python.

---

## 🇬🇧 Instructions in English

### ✅ Prerequisite
Before installing OpenSSL, it is recommended to install glibc common:
```bash
yum install glibc-common.x86_64
```

### 📥 Local installation
Install packages locally using `yum localinstall`:
```bash
# Install OpenSSL first
yum localinstall openssl11w-1.1.1w-1.el7.x86_64.rpm

# Then install the desired Python version
yum localinstall python39-3.9.17-1.el7.x86_64.rpm
yum localinstall python310-3.10.19-1.el7.x86_64.rpm
```

### 🔗 Dependencies
- `openssl11w` is a **prerequisite** for the Python packages.  
- Always install `openssl11w` before installing Python.

---

## 📌 Notas / Notes
- 🖥️ Pacotes feitos para **CentOS 7.9**, “podem” ser compatíveis com **RHEL 7**.  
- 🖥️ Packages are built for **CentOS 7.9**, and “may” be compatible with **RHEL 7**.

- 📂 Os RPMs instalam o Python em `/usr/local/` sem substituir o Python padrão do sistema.  
- 📂 These RPMs install Python under `/usr/local/` without replacing the system’s default Python.

- 🔄 Se desejar, use `alternatives` para registrar o novo Python como padrão (opcional).  
- 🔄 If desired, use `alternatives` to register the new Python as default (optional).

---

✉️ Contato / Contact: Jurandi — <jurandi82@gmail.com>

