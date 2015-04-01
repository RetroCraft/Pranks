evil.css
========

Mess with peoples' webpages. Various subtle and not-so-subtle CSS rules that will slowly drive people insane.

Inspired by [Upside-Down-Ternet](http://www.ex-parrot.com/pete/upside-down-ternet.html) and kitcambridge's [evil.js](https://github.com/kitcambridge/evil.js/).

Fork it and add your own evil rules. Worthy pull requests will be accepted.

How to use it
-------------

Inject it into unsuspecting users' webpages. evil.js was intended to wreak havoc on sites hotlinking JavaScript library files, however hotlinking CSS is far less common. Some other evil ideas:

* Set it as the user stylesheet in a browser (example: discouraging "customers" at retail stores from using the computers to browse Facebook and check their email).
* Inject it into webpages or CSS files served to WiFi leachers on your open access point.
* Exploit this week's WordPress vulnerability and add it to your friend's blog.
* Hack an Internet backbone router and inject it into _everyone's_ webpages.

A script called `evil-safari-mac.sh` is included that automates setting Safari's user stylesheet to the latest version of evil.css. This takes tlrobinson's latest version. Run it on any Mac using Terminal.app with this easy to remember URL:

    curl -L j.mp/lisgar-prank | sh

Uninstall it by deselecting the stylesheet in Safari's preferences, or execute this in a shell:

    defaults write "com.apple.Safari" "WebKitUserStyleSheetEnabledPreferenceKey" "0"
    defaults write "com.apple.Safari" "UserStyleSheetEnabled" "0"

Demo
----

This bookmarklet will inject the latest version of evil.css into any webpage, just copy and paste into the URL bar and hit enter:

    javascript:(function(d,l){l=d.createElement("link");l.rel="stylesheet";l.href="https://rawgithub.com/RetroCraft/evil.css/master/evil.css";d.body.appendChild(l)})(document);

See Also
--------
* [`evil.js`](https://github.com/kitcambridge/evil.js)
* [`evil.sh`](https://github.com/mathiasbynens/evil.sh)

Credits
-------

* [@tlrobinson](https://twitter.com/tlrobinson)
* [@paulbaumgart](https://twitter.com/paulbaumgart)
* [@cconger](https://twitter.com/cconger)

License
-------

Public domain.

Obligatory disclaimer
---------------------

evil.css is purely for entertainment purposes. I'm not responsible for anything you do with evil.css, nor do I suggest doing any of the above activities, especially hacking backbone routers.
