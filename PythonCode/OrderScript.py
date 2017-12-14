# -*- coding: utf-8 -*-

import os
import PrintTitle
import MenuLine

class OrderScript(object):
    def __init__(self):
        pass

    def setShellCommand(self,value):
        if value == 1:
            os.system('echo "google" | bash ~/code/ShellCode/Configure.sh')
            os.system('sh ~/code/ShellCode/restart.sh')
        if value == 2:
            os.system("./ideaIU/bin/idea.sh")

    def getShellCommand(self,value):
        return self.setShellCommand(value)

    def setOrderScriptFunction(self):
        while True:
            PrintTitle.PrintTitle().getOrderTitle()
            MenuLine.MenuLine().getOrderScriptFunctionMenuLine()
            print('')
            value = int(input("Please input serial number:"))
            print('')
            if value == 1:
                self.getShellCommand(value)
            elif value == 2:
                self.getShellCommand(value)
            elif value == 0:
                break

    def getOrderScriptFunction(self):
        return self.setOrderScriptFunction()

    def orderScriptFunctionMain(self):
        self.getOrderScriptFunction()
