## 🐍 Python 3.x RPM Packages for CentOS 7.9
### Versions from 3.9 to 3.14

This repository provides custom-compiled RPM packages built for **CentOS 7.9**.  
These packages **may be compatible with RHEL 7**.

**⚠️ Important Notice:** These are **not official** CentOS/RHEL packages. They are **binaries generated from the Python source code** and have been **tested only on CentOS 7.9**.

The primary focus is on Python **3.9** and **3.10**, but versions up to **3.14** are available.

### 📦 Available RPM Packages

| Package   | Version        | Description          |
| :---      | :---           | :---                 |
| `python39`  | `3.9.17-1.el7`  | Python 3.9 package   |
| `python310` | `3.10.19-1.el7` | Python 3.10 package  |
| `python311` | `3.11.14-1.el7` | Python 3.11 package  |
| `python312` | `3.12.12-1.el7` | Python 3.12 package  |
| `python313` | `3.13.9-1.el7`  | Python 3.13 package  |
| `python314` | `3.14.0-1.el7`  | Python 3.14 package  |

-----

### 📥 Local Installation Steps

Use the `yum localinstall` command for local package installation:

```bash
# Example for Python 3.9
yum localinstall python39-3.9.17-1.el7.x86_64.rpm

# Example for Python 3.10
yum localinstall python310-3.10.19-1.el7.x86_64.rpm