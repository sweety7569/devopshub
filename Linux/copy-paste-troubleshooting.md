when you experiencing a copy-paste issue between Ubuntu and Windows — copying didn’t work either from Ubuntu to Windows or from Windows to Ubuntu.
Here is the solution

---

### **Step-by-Step Fix**

1. **Start your Ubuntu VM.**
2. **Open a Terminal** (`Ctrl + Alt + T`).
3. **Install Open VM Tools:**

   ```bash
   sudo apt update
   sudo apt install open-vm-tools open-vm-tools-desktop -y
   ```
4. **Restart the VMware tools service:**

   ```bash
   sudo systemctl restart vmtoolsd
   ```
5. **Reboot your VM:**

   ```bash
   sudo reboot
   ```
6. **After reboot, test copy-paste:**

   * Copy text from host → paste in Ubuntu terminal or text editor.
   * Copy text from Ubuntu → paste into Notepad or browser on host.
