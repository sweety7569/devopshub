Setting up SSH access so you can connect to your **Linux VM (like AlmaLinux, Ubuntu, etc.)** from **MobaXterm** on your Windows host.

Below are **step-by-step, complete instructions** — from Linux configuration to MobaXterm connection setup.

---

## 🧭 **Goal**

Enable SSH on your Linux VM so you can connect remotely using **MobaXterm**.

---

## 🖥️ **Part 1: Enable SSH on Linux VM**

Run these commands inside your Linux terminal (Ubuntu, Debian, AlmaLinux, etc.).

### 1️⃣ Update packages

```bash
sudo apt update
```

> (For RHEL/CentOS/AlmaLinux use: `sudo dnf update -y`)

---

### 2️⃣ Install OpenSSH Server

```bash
sudo apt install openssh-server -y
```

> This installs the SSH service that allows remote access.

---

### 3️⃣ Enable SSH service to start on boot

```bash
sudo systemctl enable ssh
```

---

### 4️⃣ Start the SSH service immediately

```bash
sudo systemctl start ssh
```

---

### 5️⃣ Verify that SSH service is running

```bash
sudo systemctl status ssh
```

✅ You should see something like:

```
Active: active (running)
```

If it’s **inactive**, start it again or check for errors:

```bash
sudo journalctl -xeu ssh
```

---

## 🌐 **Part 2: Find Your Linux VM’s IP Address**

Run:

```bash
ip a
```

or

```bash
hostname -I
```

Note the IP address (e.g. `192.168.56.101` or `192.168.1.25`).

---

## ⚙️ **Part 3: Check Network Mode (Important)**

Your **VMware/VirtualBox network adapter** must allow your Windows system to reach the VM.

* **Recommended:** Use **Bridged Adapter** or **NAT with port forwarding**
* In VMware:

  * Go to **VM Settings → Network Adapter**
  * Choose **Bridged** or **NAT**
  * Apply and restart the VM

---

## 💻 **Part 4: Connect from MobaXterm (Windows)**

1. Open **MobaXterm**
2. Click **Session → SSH**
3. Fill in:

   * **Remote host:** `<your Linux IP>` (e.g., `192.168.56.101`)
   * **Port:** `22` (default SSH port)
   * **Username:** your Linux username (e.g., `saddam`)
4. Optionally: check ✅ **“Specify username”**
5. Click **OK**
6. When prompted, enter your Linux password

You’ll now be connected to your Linux VM via SSH inside MobaXterm.

---

## 🧩 **(Optional) Enable Passwordless SSH Access**

If you want MobaXterm to connect without password prompts:

1. Generate SSH key in MobaXterm (`Tools → MobaKeyGen`)
2. Copy the **public key** to your Linux VM:

   ```bash
   mkdir -p ~/.ssh
   echo "<paste-your-public-key-here>" >> ~/.ssh/authorized_keys
   chmod 600 ~/.ssh/authorized_keys
   chmod 700 ~/.ssh
   ```
3. Reconnect — it should log in automatically.

---

## ✅ **Quick Summary**

| Step | Command / Action                      | Purpose                      |
| ---- | ------------------------------------- | ---------------------------- |
| 1    | `sudo apt update`                     | Update system packages       |
| 2    | `sudo apt install openssh-server -y`  | Install SSH server           |
| 3    | `sudo systemctl enable ssh`           | Enable SSH on boot           |
| 4    | `sudo systemctl start ssh`            | Start SSH service            |
| 5    | `sudo systemctl status ssh`           | Confirm service is running   |
| 6    | `ip a`                                | Find Linux IP address        |
| 7    | Set “Bridged” or “NAT” mode in VMware | Enable network communication |
| 8    | Use MobaXterm SSH session             | Connect from Windows         |
