##############################################
#Author: GoogleThink
#Mail:goooglethink@gmail.com
#Last modified:2017-11-01 08:33
#Filename:DownloadFunction.py
#Description:
##############################################
# -*- coding: utf-8 -*-

import os
import PrintTitle
import MenuLine

class DownloadFunction(object):
    def __init__(self):
        pass

    def downloadVideos(self, value):
        os.system('youtube-dl %s' % value)

    def displayVideoInformations(self, value):
        os.system('youtube-dl -F %s' % value)

    def selectVideoFormat(self):
        pass

    def YouTubeFunction(self):
        while True:
            PrintTitle.PrintTitle().getDownloadTitle()
            MenuLine.MenuLine().getDownloadFunctionYouGetMenuLine()
            print('')
            value = int(input("Please input serial number:"))
            print('')
            if value == 1:
                urlValue = input("Please input video URL:")
                self.downloadVideos(urlValue)
            if value == 2:
                urlValue = input("Please input video URL:")
                self.displayVideoInformations(urlValue)
            elif value == 0:
                break

    def downloadFunctionMain(self):
        self.YouTubeFunction()
