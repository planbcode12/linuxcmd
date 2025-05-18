# Linux Terminal Simulator for Windows

![Windows Batch](https://img.shields.io/badge/Platform-Windows-0078D6?logo=windows)
![MIT License](https://img.shields.io/badge/License-MIT-green.svg)
![Version](https://img.shields.io/badge/Version-2.0-blue)

A feature-rich Windows batch script that emulates a Linux terminal environment with no dependencies required. Perfect for learning Linux commands or when you need a quick Linux-like experience on Windows.

## Features

- **Real Linux Terminal Experience** with familiar prompt style (`user@host:path$`)
- **Sudo Support** with password protection (default: "password")
- **40+ Common Linux Commands** implemented with Windows equivalents
- **No Installation Needed** - Runs natively in Windows CMD
- **Interactive Help System** (`help` command)
- **Admin Commands** (`sudo`, `su`, `exit sudo`)
- **File Operations** (`ls`, `cat`, `touch`, `rm`, etc.)
- **System Monitoring** (`ps`, `df`, `free`)

## Supported Commands

| Category       | Commands                                                                 |
|----------------|--------------------------------------------------------------------------|
| **File System** | `ls`, `ll`, `pwd`, `cd`, `mkdir`, `rmdir`, `rm`, `cat`, `touch`, `grep` |
| **System Info** | `whoami`, `date`, `ver`, `uname`, `ps`, `df`, `free`                    |
| **Networking**  | `ifconfig`, `netstat`, `ping`                                           |
| **Admin**       | `sudo`, `su`, `exit sudo`                                               |
| **Utilities**   | `clear`, `help`, `exit`, `echo`                                         |

## Getting Started

1. **Download** the linux-cmd.bat from releases.

2. **Run** the linux-cmd.bat
  
4. **Start using** Linux commands:
   ```bash
   user@PCNAME:~$ sudo mkdir /test
   [sudo] password for user: 
   user@PCNAME:~$ ls
   test
   ```

## Customization

Edit these variables at the top of the script:

```batch
set PROMPT_COLOR=0A      (Color code for terminal)
set PROMPT_USER=%USERNAME%  (Default username)
set DEFAULT_SUDO_PASS=password  (Change default sudo password)
```

## Command Examples

```bash
# Create and edit files
touch example.txt
echo "Hello Linux" > example.txt
cat example.txt

# System monitoring
df -h
free -m
ps aux

# Network commands
ifconfig
netstat -tulnp
ping google.com
```

## Limitations

- Not all Linux commands are available
- Some commands behave differently than real Linux
- Limited to Windows CMD capabilities
- No actual Linux kernel or filesystem

## Contributing

Contributions welcome! Please open an issue or PR for:
- New command implementations
- Bug fixes
- Feature requests

## License

MIT License - See [LICENSE](LICENSE) for details

---

**Enjoy your Linux experience on Windows!** 

> Note: This is a simulator - for full Linux compatibility consider using WSL
