# 📊 Netdata Monitoring Dashboard (DevOps Fundamentals Project)

## 🚀 Project Overview

This project demonstrates how to set up a real-time system monitoring dashboard using **Netdata** on a Linux environment (WSL compatible).

The goal of this project is to understand:

* How system monitoring works
* How to visualize system health metrics
* How to configure alerts
* How to automate infrastructure setup using shell scripts

The entire setup is automated using Bash scripts to simulate real-world DevOps practices.

---

## 🛠 Tech Stack

* **Linux (Ubuntu on WSL)**
* **Netdata**
* **Bash Scripting**
* **stress (load testing tool)**

---

## 📁 Project Structure

```
netdata-monitoring-dashboard/
│
├── scripts/
│   ├── setup.sh
│   ├── test_dashboard.sh
│   └── cleanup.sh
│
├── config/
│   └── cpu_alert.conf
│
└── README.md
```

---

## 🎯 Project Requirements Implemented

✔ Installed Netdata on Linux (WSL compatible)
✔ Monitored CPU, Memory, and Disk I/O
✔ Accessed dashboard via web browser
✔ Customized dashboard with a custom CPU alert
✔ Automated setup, testing, and cleanup

---

# ⚙️ Installation & Setup

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/hackhawk-arch/netdata-monitoring-dashboard.git
cd netdata-monitoring-dashboard/scripts
```

---

## 2️⃣ Make Scripts Executable

```bash
chmod +x setup.sh test_dashboard.sh cleanup.sh
```

---

## 3️⃣ Run Setup Script

```bash
./setup.sh
```

> ⚠️ Note (WSL Users):
> The Netdata install command uses `curl -L` to follow redirects properly in Windows Subsystem for Linux environments.

---

# 🌐 Accessing the Dashboard

After installation, open:

```
http://localhost:19999
```

If running on a remote server:

```
http://<server-ip>:19999
```

If firewall is enabled:

```bash
sudo ufw allow 19999/tcp
```

---

# 📊 Metrics Monitored

Netdata monitors:

* 🔥 CPU Usage
* 🧠 Memory Usage
* 💾 Disk I/O
* ⚙ System Load
* 📈 Network Activity

All metrics are displayed in real-time with interactive charts.

---

# 🚨 Custom Alert Configuration

A custom alert was added for CPU usage.

### Trigger Conditions:

* ⚠ Warning → CPU usage above 80%
* 🔴 Critical → CPU usage above 90%

Alert configuration file:

```
/etc/netdata/health.d/cpu_alert.conf
```

Example configuration:

```
alarm: high_cpu_usage
on: system.cpu
lookup: average -1m percentage
units: %
every: 10s
warn: $this > 80
crit: $this > 90
info: CPU usage is high
```

---

# 🧪 Testing the Monitoring Dashboard

To simulate system load and test alerts:

```bash
./test_dashboard.sh
```

This script:

* Generates CPU load
* Allocates memory
* Creates disk I/O operations

You will see spikes in the Netdata dashboard in real-time.

---

# 🧹 Cleanup

To completely remove Netdata and test files:

```bash
./cleanup.sh
```

This will:

* Stop Netdata service
* Uninstall Netdata
* Remove test files

---

# 🧠 What I Learned

* Fundamentals of system monitoring
* Real-time performance visualization
* Alert configuration and thresholds
* Infrastructure automation with Bash
* Basic DevOps workflow
* Observability mindset in production systems

---

# 🔮 Future Improvements

* Add authentication to Netdata dashboard
* Deploy Netdata inside Docker
* Integrate with Prometheus & Grafana
* Automate deployment using GitHub Actions
* Push metrics to a centralized monitoring system

---

# 🏆 Key DevOps Concepts Demonstrated

✔ Monitoring & Observability
✔ Infrastructure Automation
✔ Alerting Systems
✔ System Health Analysis
✔ CI/CD Readiness

---

# 👨‍💻 Author

**Kelvin Macharia**
DevOps & Software Engineering Enthusiast
Building production-ready systems step by step 🚀

---