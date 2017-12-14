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
            os.system('bash ~/code/ShellCode/GoProxy.sh')
            print('')
        elif value == 2:
            os.system('bash ~/code/ShellCode/Ultrasurf.sh')
            print('')
        elif value == 3:
            os.system('bash ~/code/ShellCode/go-net.sh')
            print('')
        elif value == 4:
            os.system('echo "google" | sudo -S sh ~/code/Network/NetSpeeder/build.sh')
            os.system('sudo ~/code/Network/NetSpeeder/net_speeder wlan0:0 "tcp"')
            print('')
        elif value == 5:
            os.system('echo "google" | sudo -S /etc/init.d/networking restart');
            os.system('echo "google" | sudo -S /etc/init.d/nscd restart');
            os.system('echo "google" | sudo systemctl restart NetworkManager');
        elif value == 6:
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
            elif value == 4:
                self.getShellCommand(value)
                DelPrint.DelPrint().delNetworkPrint()
            elif value == 5:
                self.getShellCommand(value)
                DelPrint.DelPrint().delNetworkPrint()
            elif value == 6:
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
