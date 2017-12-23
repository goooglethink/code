# -*- coding: utf-8 -*-

import os
import PrintTitle
import MenuLine
import DelPrint
import subprocess


class GithubScriptFunction(object):
    def __init__(self):
        pass

    def setShellCommand(self,value):
        if value == 1:
            os.system('bash ~/code/ShellCode/GithubUser.sh')
        elif value == 2:
            os.system('bash ~/code/ShellCode/GithubUltrasurf.sh')
        elif value == 3:
            urlValue = input("Please input github URL:")
            os.system('git clone %s'%urlValue)
        elif value == 4:
            urlValue = input("Please input local github project:")
            os.chdir(urlValue)
            subprocess.call(["git","status"])
            subprocess.call(["git","add","."])
            subprocess.call(["git","commit",".","-m","update"])
            subprocess.call(["git","status"])
            stringValue = input("If you want to push project in Github Server?(y or n): ")
            if stringValue == "y":
                subprocess.call(["git","push","-u","origin","+master"])
            elif stringValue == "n":
            	print("keep processing")


    def getShellCommand(self,value):
        return self.setShellCommand(value)

    def githubScriptFunction(self):
        while True:
            PrintTitle.PrintTitle().getGithubTitle()
            MenuLine.MenuLine().getGithubScriptFunctionMenuLine()
            print('')
            value = int(input("Please input serial number:"))
            print('')
            if value == 1:
                self.getShellCommand(value)
                DelPrint.DelPrint().delGithubPrint()
            elif value == 2:
                self.getShellCommand(value)
                DelPrint.DelPrint().delGithubPrint()
            elif value == 3:
                self.getShellCommand(value)
                DelPrint.DelPrint().delGithubPrint()
            elif value == 4:
                self.getShellCommand(value)
                DelPrint.DelPrint().delGithubPrint()
            elif value == 0:
                break

    def githubScriptFunctionMain(self):
        self.githubScriptFunction()
