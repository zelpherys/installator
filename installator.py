import os
import subprocess

def install_vscode():
    vscode_installer = os.path.join(os.getcwd(), "VSCodeSetup.exe")
    subprocess.run([vscode_installer, '/silent', '/mergetasks=!runcode'], check=True)

def install_git():
    git_installer = os.path.join(os.getcwd(), "GitSetup.exe")
    subprocess.run([git_installer, '/VERYSILENT', '/NORESTART'], check=True)

if __name__ == "__main__":
    install_vscode()
    install_git()
