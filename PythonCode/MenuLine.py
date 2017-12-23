# -*- coding: utf-8 -*-
import PrintTitle
class MenuLine(object):
    def __init__(self):
        pass

    def setMainMenuLine(self):
        PrintTitle.PrintTitle().getMyToolsTitle()
        print("*" * 50)
        print('\033[1m')
        print("1.System-Environment-Script")
        print("2.Network-Script")
        print("3.Download-Script")
        print("4.System-Command-Stript")
        print("5.Github-Stript")
        print("6.Order-Script")
        print("0.Power-Off")
        print('\033[0m')
        print("*" * 50)

    def setSystemEnvironmentFunctionMenuLine(self):
        print("*" * 50)
        print('\033[1m')
        print("1.Install-Software-Packages")
        print("2.Optimize-Settings")
        print("3.System-Update-And-Upgrade")
        print("4.Cover-DNS-File")
        print("5.Cover-Hosts-File")
        print("6.Cover-Bashrc-Zshrc-Vimrc-Tmux-File")
        print("7.Cover-TCP-File")
        print("8.Install-Github-Project")
        print("0.Return-To-The-Previous-Menu")
        print('\033[0m')
        print("*" * 50)

    def setNetworkFunctionMenuLine(self):
        print("*" * 50)
        print('\033[1m')
        print("1.Startup-Ultrasurf")
        print("2.Startup-Net-Speeder")
        print("3.Mac-Change")
        print("0.Return-To-The-Previous-Menu")
        print('\033[0m')
        print("*" * 50)

    def setDownloadFunctionYouGetMenuLine(self):
        print("*" * 50)
        print('\033[1m')
        print("1.Download-Videos")
        print("2.Display-Videos-Informations")
        print("3.Download-Script")
        print("4.System-Command-Stript")
        print("5.Order-Script")
        print("0.Power-Off")
        print('\033[0m')
        print("*" * 50)

    def setSystemCommandStriptMenuLine(self):
        print("*" * 50)
        print('\033[1m')
        print("1.Power-OFF-System")
        print("2.Restart-System")
        print("3.Display-Escapement-Divices")
        print("4.Format-Escapement-Divices")
        print("0.Return-To-The-Previous-Menu")
        print('\033[0m')
        print("*" * 50)

    def setGithubScriptFunctionMenuLine(self):
        print("*" * 50)
        print('\033[1m')
        print("1.Add-Global-Github-Configure")
        print("2.Cover-Github-UltrasurfProxy")
        print("3.Clone-Github-Project")
        print("4.Add-Commit-And-Push-Github-Project")
        print("0.Return-To-The-Previous-Menu")
        print('\033[0m')
        print("*" * 50)

    def setOrderScriptFunctionMenuLine(self):
        print("*" * 50)
        print('\033[1m')
        print("1.Cover-File-and-Folder")
        print("2.Startup-JavaIDEA")
        print("0.Return-To-The-Previous-Menu")
        print('\033[0m')
        print("*" * 50)

    def getMainMenuLine(self):
        return self.setMainMenuLine()

    def getSystemEnvironmentFunctionMenuLine(self):
        return self.setSystemEnvironmentFunctionMenuLine()

    def getNetworkFunctionMenuLine(self):
        return self.setNetworkFunctionMenuLine()

    def getDownloadFunctionYouGetMenuLine(self):
        return self.setDownloadFunctionYouGetMenuLine()

    def getSystemCommandStriptMenuLine(self):
        return self.setSystemCommandStriptMenuLine()

    def getGithubScriptFunctionMenuLine(self):
        return self.setGithubScriptFunctionMenuLine()

    def getOrderScriptFunctionMenuLine(self):
        return self.setOrderScriptFunctionMenuLine()
