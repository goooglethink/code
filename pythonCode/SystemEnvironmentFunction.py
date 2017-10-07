# -*- coding: utf-8 -*-
import os
import PrintTitle
import MenuLine


class SystemEnvironmentFunction(object):
    def __init__(self):
        pass

    def setShellCommand(self, value):
        if value == 1:
            os.system('echo "google" | bash ~/code/shellCode/BasicConfigure.sh')
            os.system('sh ~/code/shellCode/restart.sh')
            print('')
        elif value == 2:
            os.system('echo "google" | bash ~/code/shellCode/ProgramConfigure.sh')
            os.system('sh ~/code/shellCode/restart.sh')
            print('')
        elif value == 3:
            os.system('echo "google" | bash ~/code/shellCode/UpdateSystem.sh')
            os.system('sh ~/code/shellCode/restart.sh')
            print('')
        elif value == 4:
            os.system('echo "google" | bash ~/code/shellCode/DNS.sh')
            print('')
        elif value == 5:
            os.system('echo "google" | bash ~/code/shellCode/HostsFile.sh')
            print('')
        elif value == 6:
            os.system('echo "google" | bash ~/code/shellCode/BashrcFile.sh')
            os.system('echo "google" | bash ~/code/shellCode/ZshrcVimrcFile.sh')
            os.system('echo "google" | bash ~/code/shellCode/Tmux.sh')
            print('')
        elif value == 7:
            os.system('echo "google" | bash ~/code/shellCode/TCP.sh')
            print('')
        elif value == 8:
            os.system('echo "google" | bash ~/code/shellCode/GithubProject.sh')
            print('')

    def getShellCommand(self, value):
        return self.setShellCommand(value)

    def setShellFunction(self):
        while True:
            PrintTitle.PrintTitle().getSystemTitle()
            self.systemEnvironmentFunctionTitle()
            print('')
            value = int(input("Please input serial number:"))
            print('')
            if value == 1:
                self.getShellCommand(value)
            elif value == 2:
                self.getShellCommand(value)
            elif value == 3:
                self.getShellCommand(value)
            elif value == 4:
                self.getShellCommand(value)
            elif value == 5:
                self.getShellCommand(value)
            elif value == 6:
                self.getShellCommand(value)
            elif value == 7:
                self.getShellCommand(value)
            elif value == 8:
                self.getShellCommand(value)
            elif value == 9:
                self.getShellCommand(value)
            elif value == 0:
                break

    def getShellFunction(self):
        return self.setShellFunction()

    def systemEnvironmentFunctionTitle(self):
        MenuLine.MenuLine().getSystemEnvironmentFunctionMenuLine()

    def systemEnvironmentFunctionMain(self):
        self.getShellFunction()
