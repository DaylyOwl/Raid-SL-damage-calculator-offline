RAID Damage Calculator - Desktop App Source (English)

This package is a ready Electron project for building a Windows portable app (.exe).

What is included:
- index.html            -> the calculator UI
- main.js               -> desktop window shell
- preload.js            -> safe preload bridge
- package.json          -> Electron app configuration
- .github/workflows/... -> GitHub Actions workflow for automatic Windows build

Fastest way to get the .exe:
1) Create a new public or private GitHub repository.
2) Upload all files from this folder into the repository root.
3) Open the repository on GitHub.
4) Go to Actions.
5) Run the workflow: "Build Windows portable app".
6) Download the artifact named: raid-damage-calculator-windows-portable.

Local build on Windows:
1) Install Node.js.
2) Open terminal in this folder.
3) Run: npm install
4) Run: npm run build:win
5) The .exe will appear in the dist folder.

Notes:
- The output is a portable Windows app, not an installer.
- Windows may show a SmartScreen warning because the executable is unsigned.
