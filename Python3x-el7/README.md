
## 🐍 Python 3.x RPM Packages for CentOS 7.9
### Versions from 3.9 to 3.14

This repository provides three custom-compiled RPM packages built for **CentOS 7.9**. These packages **may be compatible with RHEL 7**.

**⚠️ Important Notice:** These are **not official** CentOS/RHEL packages. They are **binaries generated from the Python source code** and have been **tested only on CentOS 7.9**.

The primary focus is on Python **3.9** and **3.10**, with OpenSSL 1.1.1w included as a necessary prerequisite.

### 📦 Available RPM Packages

The repository includes the following files:

| Package | Version | Description |
| :--- | :--- | :--- |
| `openssl11w` | `1.1.1w-1.el7` | Prerequisite OpenSSL version. |
| `python39` | `3.9.17-1.el7` | Python 3.9 package. |
| `python310` | `3.10.19-1.el7` | Python 3.10 package. |
| `python311` | `3.11.14-1.el7` | Python 3.11 package. |
| `python312` | `3.12.12-1.el7` | Python 3.12 package. |
| `python313` | `3.13.9-1.el7` | Python 3.13 package. |
| `python314` | `3.14.0-1.el7` | Python 3.14 package. |
-----

### 🇬🇧 Detailed Installation Instructions

### ✅ Prerequisite Installation

Before installing OpenSSL, it is recommended to install `glibc common`:

```bash
yum install glibc-common.x86_64
```

### 📥 Local Installation Steps

Use the `yum localinstall` command for local package installation.

#### 🔗 Dependency Requirement:

The `openssl11w` package is a **prerequisite** for the Python packages. **Always install** `openssl11w` **before** installing Python.

```bash
# 1. Install OpenSSL first
yum localinstall openssl11w-1.1.1w-1.el7.x86_64.rpm

# 2. Then install the desired Python version(s)
yum localinstall python39-3.9.17-1.el7.x86_64.rpm
yum localinstall python310-3.10.19-1.el7.x86_64.rpm
```

-----

### 💻 Usage and Server Environment

These packages are **ideal for server use**, especially in environments where you need modern Python versions without altering the distribution's core system files.

#### 📌 Important Notes

  * **System Compatibility:** The packages are built specifically for **CentOS 7.9**, and "may" be compatible with **RHEL 7**.

  * **Installation Location:** These RPMs install Python under the `/usr/local/` directory.

  * **System Python:** They install the new Python versions **without replacing the system’s default Python**.

  * **Calling the New Python:** You can execute the new Python versions directly using their full paths:

    ```bash
    # Example for Python 3.10
    /usr/local/bin/python3.10 --version
    ```

  * **Default Python (Optional):** If desired, you can use the `alternatives` command to register the new Python as default (optional).

#### ⚠️ Best Practice: Virtual Environments (venv)

It is highly recommended to use **virtual environments (`venv`)** for project-specific dependencies. This practice ensures:

  * **Isolation:** Project dependencies do not conflict with system packages or other projects.
  * **Cleanliness:** Your system-wide `/usr/local/` installation remains clean.

**Example for creating and activating a venv with Python 3.10:**

```bash
# Use the full path to create the venv
/usr/local/bin/python3.10 -m venv my_project_venv

# Activate the venv
source my_project_venv/bin/activate

# Now 'python' inside the venv points to the new 3.10 version
(my_project_venv) python --version
```

-----

✉️ **Contact:** Jurandi — `<jurandi.cursos@gmail.com>`

