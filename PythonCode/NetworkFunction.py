# -*- coding: utf-8 -*-

import os
import PrintTitle
import DelPrint
import MenuLine

class NetworkFunction(object):
    def __init__(self):
        pass

    def __del__(self):
        DelPrint.DelPrint().delMainPrint()

    def networkMenuTitle(self):
        MenuLine.MenuLine().getNetworkFunctionMenuLine()

    def setShellCommand(self,value):
        if value == 1:
            os.system('bash ~/code/ShellCode/Ultrasurf.sh')
            print('')
        elif value == 2:
            os.system('echo "google" | sudo -S sh ~/code/Network/NetSpeeder/build.sh')
            os.system('sudo ~/code/Network/NetSpeeder/net_speeder wlan0:0 "tcp"')
            print('')
        elif value == 3:
            os.system('bash ~/code/ShellCode/macChange.sh')
            print('')

    def setNetworkFunction(self):
        while True:
            PrintTitle.PrintTitle().getNetworkTitle()
            self.networkMenuTitle()
            print('')
            value = int(input("Please input serial number:"))
            print('')
            if value == 1:
                self.getShellCommand(value)
                DelPrint.DelPrint().delNetworkPrint()
            elif value == 2:
                self.getShellCommand(value)
                DelPrint.DelPrint().delNetworkPrint()
            elif value == 3:
                self.getShellCommand(value)
                DelPrint.DelPrint().delNetworkPrint()
            elif value == 0:
                break

    def getShellCommand(self,value):
        return self.setShellCommand(value)

    def getNetworkFunction(self):
        return self.setNetworkFunction()

    def networkMain(self):
        self.getNetworkFunction()
