# MacBook Setup with Ansible 🚀
Automate the setup of your macOS environment using Ansible. This playbook installs essential tools, configs, and system settings from scratch—perfect for fresh setups or keeping multiple Macs consistent.

## Features
```
✅ Installs Homebrew and essential CLI tools (e.g., tmux, fzf, neovim)
✅ Sets up developer tools (Docker, Git, Python, Node.js, etc.)
✅ Configures dotfiles (optional)
✅ Automates system preferences (e.g., key repeat speed, Finder settings)
✅ Supports idempotent execution (safe to re-run)
✅ Support Rosetta 2 for Apple Silicon Macs
```

## Prerequisites
Xcode Command Line Tools (needed for Homebrew)
```
xcode-select --install
```

Ansible (install manually first)

```
sudo pip3 install ansible
```

## Installation & Usage
Clone the repository:
```
git clone https://github.com/yourusername/mac-setup-ansible.git  
cd mac-setup-ansible
```
Run the playbook:


```
ansible-playbook mac-setup.yml --ask-become-pass --become --become-user <your_mac_user>
```

## Customization
- Modify the roles directory to add/remove software.
- Update brew_packages.yml to install additional tools.
- Customize dotfiles under files/.

### Future Enhancements
- [ ] Add macOS defaults (dock, trackpad, Finder tweaks)
- [ ] Add GUI apps (e.g., VS Code, Slack, Chrome)
