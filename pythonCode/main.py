##############################################
#Author: GoogleThink
#Mail:goooglethink@gmail.com
#Last modified: 2017-11-01 07:39
#Filename: main.py
#Description:
##############################################
# -*- coding: utf-8 -*-

import os
import PrintTitle
import MenuLine
import SystemEnvironmentFunction
import NetworkFunction
import DownloadFunction
import DelPrint
import SystemCommandStript
import GithubScriptFunction
import OrderScript


class MyTools(object):
    def __init__(self):
        pass

    def __del__(self):
        DelPrint.DelPrint().delMainPrint()

    def inputParameter(self):
        while True:
            MenuLine.MenuLine().getMainMenuLine()
            print('')
            value = int(input("Please input serial number:"))
            if value == 1:
                SystemEnvironmentFunction.SystemEnvironmentFunction().systemEnvironmentFunctionMain()
            elif value == 2:
                NetworkFunction.NetworkFunction().networkMain()
            elif value == 3:
                DownloadFunction.DownloadFunction().downloadFunctionMain()
            elif value == 4:
                SystemCommandStript.SystemCommandStript().systemCommandStriptMain()
            elif value == 5:
                GithubScriptFunction.GithubScriptFunction().githubScriptFunctionMain()
            elif value == 6:
                OrderScript.OrderScript().orderScriptFunctionMain()
            elif value == 0:
                break
            else:
                print('')
                print("\033[1;31m Please input again !!! \033[0m")

    def main(self):
        self.inputParameter()


myTools = MyTools()
myTools.main()
