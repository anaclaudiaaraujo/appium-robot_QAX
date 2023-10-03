# Preparação de ambiente para utilização do appium com robot

## Ferramentas utilizadas
- VS Code

- Node

- [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=pt-br&gl=br&icid=CNavAppsWindowsApps)
    - Abrir após instalação do Git e configurar para abrir o Git Bash como profile padrão

- Git
    - Lembrar de marcar checkbox "Git Bash"
    - Marcar "Add a Git Bash Profile to Windows Terminal"

- JDK
    - Configurar JAVA_HOME: C:\Program Files\Java\jdk-20
    - Configurar PATH: ```%JAVA_HOME%\bin```

- Android Studio
    - Configurar ANDROID_HOME: C:\Users\ana.araujo\AppData\Local\Android\Sdk
    - Configurar PATH: ```%ANDROID_HOME%\platform-tools```

- Python
    - Marcar opção "Add python.exe to PATH"
    - Customize installation
    - Install python for all users
    - Instalar direto no C: ao invés de em Program Files

- Servidor Appium
    ```
    npm install appium
    ```

- Appium-doctor
    - Instalar 
    ```npm install appium-doctor```

    - Executar 
    ```npx appium-doctor --android```

- Appium Inspector
    - [Instalador](https://github.com/appium/appium-inspector/releases)
    - Incluir capabilities
    ```json
        {
            "platformName": "Android",
            "appium:deviceName": "Android Emulator",
            "appium:automationName": "UIAutomator2",
            "appium:app": "C:\\QAx\\projects\\yodapp-robot\\app\\yodapp-beta.apk",
            "appium:udid": "emulator-5554",
            "appium:autoGrantPermissions": true
        }

- Robot
    ```
    pip install robotframework
    ```

- UIAutomator2
    ```
    npx appium driver install uiautomator2
    ```

- Appium Library
    ```
    pip install robotframework-appiumlibrary
    ```

## Como executar
- Iniciar o appium
    ```
    npx appium
    ```
- Abrir emulador

- Executar teste, gerando arquivos de log em um diretório específico
    ```
    robot -d ./logs/ tests/NOME-DO-TESTE.robot
    ```
- Executar teste utilizando tags
    ```
    robot -d ./logs/ -i long tests/NOME-DO-TESTE.robot
    ```

## Comandos úteis
- Quando apresentar erro Stacktrace: io.appium.uiautomator2.common.exceptions.NoSuchDriverException: The session identified
    ```
    adb uninstall io.appium.uiautomator2.server
    ```
    ```
    adb uninstall io.appium.uiautomator2.server.test
    ```