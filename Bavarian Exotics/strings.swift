//
//  strings.swift
//  Bavarian Exotics
//
//  Created by Maik Diebenkorn on 21.09.17.
//  Copyright © 2017 Maik Diebenkorn. All rights reserved.
//

import Foundation

// basic strings

var appname = "Bavarian Exotics"
var developer = "Entwickler: M.Diebenkorn\n"
var developeremail = "maikdiebenkorn@gmail.com"
var developerinfo = developer + "Icons von: https://icons8.com\n" + "\nBuild:" + version + "\n" + copyright
var abouttext = "Über diese App"
var version = "1 Beta"
var copyright = "\nCopyright © 2017 Maik Diebenkorn.\n All rights reserved.\n" // this line can not be edited

// app strings

var baseurl = "https://bavarianexotics.de" // add your url here
var sharemessage = "Schau dir mal diese Seite an:" // set the default sharing message
var shareurl = baseurl // set the link to share
var sendemailadress = developeremail // set email adress for in app email sending

// facebook strings

var facebookurl = "https://www.facebook.com/bavarianexotix/" // add your facebook page here
var facebookid = "365458903844380" // set your facebook id here (for help use this site https://findmyfbid.com )
var schemesfacebook = "profile/"
var openfacebook = "fb://" + schemesfacebook + facebookid

/*
 Schemes:
 fb://profile – Open Facebook app to the user’s profile
 fb://friends – Open Facebook app to the friends list
 fb://notifications – Open Facebook app to the notifications list (NOTE: there appears to be a bug with this URL. The Notifications page opens. However, it’s not possible to navigate to anywhere else in the Facebook app)
 fb://feed – Open Facebook app to the News Feed
 fb://events – Open Facebook app to the Events page
 fb://requests – Open Facebook app to the Requests list
 fb://notes – Open Facebook app to the Notes page
 fb://albums – Open Facebook app to Photo Albums list
 
 Example:
 fb://profile/<id>
 */
