---
title: Events
---
An der HSR finden verschiedene regelmässige und einige weniger regelmässige **Events zu Open Source-Themen** statt.
Der **open\HSR** hat sich zum Ziel gesetzt, diese Events zu unterstützen.

{% for event_page in site.events %}

# {{ event_page.teaser_title }}: {{ event_page.title }}
{{ event_page.teaser }}

Mehr zu [{{ event_page.title }}]({{ event_page.url }})</a></p>

{% if event_page.teaser_image %}
![{{ event_page.teaser_title }}]({{ event_page.teaser_image }})
{% endif %}

{% endfor %}

<img src="/assets/emoji/octocat.png" style="float: right; box-shadow: none;" />
# [Git/GitHub Workshop](https://github.com/openhsr/git-github-workshop/)

> In diesem vom open\HSR organisierten Workshop werden die ersten Hürden beim Arbeiten mit Git und GitHub überwunden. Wir wollen dir die Hemmschwelle nehmen, damit du unbeschwert zu Open Source und open\HSR Projekten beitragen kannst.

Dieser Workshop wird von [GitHub](https://github.com/) mit Handouts & Swag unterstützt :tada: :heart: :octocat:


# [Swiss Python Summit](http://www.python-summit.ch/)

> This summit is all about the programming language you love! Discover the wide field of Python applications, hear how others use the snake and meet Swiss Pythonistas. The conference is suited for all skill levels, from early beginners to expert developers.
:snake: <http://www.python-summit.ch/>

# [Swiss PGDay](http://www.pgday.ch/)
> An diesem Tag dreht sich alles um PostgreSQL - "the world's most advanced open source database"!
> Triff dich mit anderen Datenbank-Interessierten an dieser einzigartigen Konferenz. Sie ist für alle geeignet, vom Einsteiger bis zum Experten, vom Sachbearbeiter bis zum Führungsverantwortlichen.
<http://www.pgday.ch/>

# [ZuriHac](https://www.zurihac.info/)

>  ZuriHac is the biggest [Haskell](https://haskell.org/) Hackathon in the world: a completely free, three-day grassroots coding festival organized by [Zürich Friends of Haskell](https://zfoh.ch/). It features fantastic keynotes, interesting tracks, and of course lots of hacking and socializing!
<https://www.zurihac.info/>
