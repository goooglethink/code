# -*- coding: utf-8 -*-

import PrintTitle
import MenuLine
import os


class SystemCommandStript(object):
    def __init__(self):
        pass

    def setShellCommand(self,value):
        if value == 1:
            os.system('echo "google" | sudo -S shutdown -h now')
        elif value == 2:
            os.system('echo "google" | sudo -S shutdown -r now')
        elif value == 3:
            os.system('echo "google" | sudo fdisk -l')
        elif value == 4:
            fdisk = input("Please input disk:")
            os.system('echo "google" | sudo -S umount /dev/%s'%fdisk)
            os.system('echo "google" | sudo -S mkfs.vfat /dev/%s'%fdisk)

    def setSystemCommandStriptFunction(self):
        while True:
            PrintTitle.PrintTitle().getCommandTitle()
            MenuLine.MenuLine().getSystemCommandStriptMenuLine()
            print('')
            value = int(input("Please input serial number:"))
            print('')
            if value == 1:
                self.setShellCommand(value)
            elif value == 2:
                self.setShellCommand(value)
            elif value == 3:
                self.setShellCommand(value)
            elif value == 4:
                self.setShellCommand(value)
            elif value == 0:
                break

    def systemCommandStriptMain(self):
        self.setSystemCommandStriptFunction()
