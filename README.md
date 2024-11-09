# BurpSuite Loader

This project provides an easy setup for launching BurpSuite Pro using `burploader.jar`. Follow the instructions below to get started and troubleshoot any issues.

## Requirements

- Java Development Kit (JDK) version 18.0.2.1
- BurpSuite Pro version 2023.2.4

## Installation

1. Download and place the following files:
   - `burploader.jar`
   - `burpsuite_pro_v2023.2.4.jar` (BurpSuite Pro)

2. Ensure the JDK is installed and the Java path is set to:
   ```
   C:\Program Files\Java\jdk-18.0.2.1\bin\java.exe
   ```

## Running BurpSuite with Loader

1. **Using Command Line**  
   To start BurpSuite with `burploader.jar`, open a terminal or command prompt and run:
   ```bash
   java -jar burploader.jar
   ```

2. **Using `burp.bat` Script**  
   Alternatively, you can use the provided `burp.bat` file for launching BurpSuite:
   ```batch
   "C:\Program Files\Java\jdk-18.0.2.1\bin\java.exe" "--add-opens=java.desktop/javax.swing=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED" "-javaagent:burploader.jar" "-noverify" "-jar" "C:\Users\user\path/of/your"
   ```

   Modify the last part of the path in `burp.bat` if your BurpSuite file is in a different location.

## Troubleshooting

If you encounter issues when launching BurpSuite, follow these steps:

1. **Clear BurpSuite Cache**  
   Open Command Prompt and enter the following commands to clear BurpSuite's cached files:
   ```cmd
   rd /s /q "%userprofile%\AppData\Roaming\BurpSuite\"
   ```

2. **Delete Java Preferences**  
   Remove any existing Java preferences for BurpSuite by running:
   ```cmd
   reg delete "HKEY_CURRENT_USER\SOFTWARE\JavaSoft\Prefs\burp" /f
   ```

   After clearing the cache and preferences, try running BurpSuite again.

## File Paths

- **JDK Path:** Ensure that your JDK is installed at `C:\Program Files\Java\jdk-18.0.2.1\bin\java.exe`.
- **BurpSuite Path:** Ensure `burpsuite_pro_v2023.2.4.jar` is correctly located at `C:\Users\user\Desktop\burp\`.

## Notes

- Make sure you have the appropriate permissions to access and modify files in the specified directories.
- The `burp.bat` script includes the necessary `--add-opens` flags for Java modules, which ensure compatibility with BurpSuite's internal libraries.

---

Enjoy using BurpSuite with the loader setup! If you have any questions or encounter issues, please refer to the official BurpSuite documentation or contact support.
