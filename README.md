# Linux Command Simulator for Windows

![Batch File Logo](https://img.shields.io/badge/Platform-Windows-blue) ![License](https://img.shields.io/badge/License-MIT-green)

A Windows batch file that simulates a Linux command-line environment without requiring any additional installations like WSL.

## Features ✨

- 🚀 **No installation required** - Runs on native Windows CMD
- 💻 **Linux-like experience** - Simulates common Linux commands
- 📋 **Interactive prompt** - Clean interface with customizable settings
- ❓ **Built-in help system** - Type `help` to see available commands
- 🔄 **Common Linux commands** implemented with Windows equivalents

## Supported Commands 🛠️

| Command   | Description                          | Windows Equivalent |
|-----------|--------------------------------------|--------------------|
| `clear`   | Clears the screen                    | `cls`              |
| `ls`      | List directory contents (basic)      | `dir /b`           |
| `ll`      | List directory contents (detailed)   | `dir`              |
| `pwd`     | Print working directory              | `cd`               |
| `whoami`  | Display current user                 | `%USERNAME%`       |
| `date`    | Show current date/time               | `%DATE% %TIME%`    |
| `echo`    | Display message                      | `echo`             |
| `ipconfig`| Network configuration                | `ipconfig`         |
| `netstat` | Network statistics                   | `netstat -ano`     |
| `ps`      | Process status                       | `tasklist`         |
| `mkdir`   | Create new directory                 | `mkdir`            |
| `rmdir`   | Remove directory                     | `rmdir`            |
| `cat`     | Display file content                 | `type`             |
| `ver`     | Show system version                  | `systeminfo`       |
| `exit`    | Quit the simulator                   | `exit`             |

## Installation ⚙️

No installation required! Simply:

1. Copy the batch file code
2. Save it as `linux_cmd.bat`
3. Double-click to run

## Usage 🖥️

```bash
LinuxSim$ ls
LinuxSim$ mkdir test
LinuxSim$ ll
LinuxSim$ cat readme.txt
LinuxSim$ exit
```

## Customization 🎨

You can customize these settings at the top of the batch file:

```batch
set PROMPT_COLOR=0A    (Color code for the prompt)
set PROMPT_TEXT=LinuxSim$  (Your custom prompt text)
set VERSION=1.2        (Version number)
```

## Limitations ⚠️

- This is a simulation using Windows commands
- Not all Linux commands are available
- Some commands behave differently than in real Linux
- No actual Linux environment is running

## Contributing 🤝

Contributions are welcome! Please open an issue or pull request for:
- New command implementations
- Bug fixes
- Feature suggestions

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Enjoy your Linux-like experience on Windows! 🐧➡️🪟
