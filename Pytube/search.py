import URL
import os
import urllib.request, urllib.parse
import acc

#Implements YouTube's search algorithm
def searchVideo():
    temp = input("Input Video Title: ")
    #Convert to valid YouTube search URL
    temp = temp.replace(" ", "+")
    htmlURL = "https://www.youtube.com/results?search_query=" + temp

    #Get link of first page videos search result
    URLS = acc.getVideoURLS(htmlURL)
    if len(URLS) == 0:
        print("No Videos found!")
        return
    
    print("")
    pick = -1
    while True:
        pick = input("Please Select a Video to Download: ")
        try:
            pick = int(pick)
            if pick >= 0 and pick <= 20:
                break
            else:
                print("Not a valid entry! Try again!")
        except ValueError:
            print("That's not a number! Try again.")
            
    URL.downloadByURL(URLS[pick])
