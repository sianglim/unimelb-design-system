# How do I choose a technology for my website?

**Note**: This article relates to the selection of technology for a public facing website and is not necessarily relevant to staff intranet or student teaching purposes. 

Before you choose a technology for your website, you should first consider [who your website is for and what it will need to do](/articles/designers-start). You also shouldn’t re-invent the wheel and should try and make use of university-wide services for the storage of structured data (e.g. events or courses). Having these decisions made up-front will make it much easier for you to choose a technology that makes creating and maintaining your website much easier. 

## Embrace provided tools
The University provides a range of CMS tools for hosting websites. Maintaining a CMS is a full-time job requiring constant updates, security patches and the provision of training, so it is not recommended that you use a non-supported CMS. University supported CMS’s are also partnered closely with the university design system in order to ensure that a consistent user experience and compliance with accessibility requirements. If you use a non-supported CMS you will need to ensure that approved themes are developed for use before any sites are made live. 

This article will explain the differences between the various centrally provided services available. 

## A note on design. 
All sites on the *.unimelb.edu.au domain must make use of the University Design System. This means that regardless of what CMS you choose, your site must look the same. It is a signifiant amount of work to match a CMS to the page templates and components provided, and this will add a significant cost to any web project opting to use a non-supported CMS. 

## Supported CMS systems

### Matrix
Matrix is the university's primary CMS system. It should be your first port of call unless you are building a site supported by the Bespoke Structure-Data CMS (eg. a Graduate School). 

Matrix allows users to maintain websites with very little training. It is centrally supported and great for use where your website does not need to consume or syndicate complex information. 

### Bespoke 

Bespoke has been created to enable the production of websites where information needs to be stored in a structured format.

Categories of websites that should be constructed in Bespoke include:

* Graduate Websites
* Research Institutes

This list will expand over time. 

Bespoke allows for certain types of information to be stored broken down into component chunks of data. These pieces can then be maintained by you on your local website, but made available to other services where undergraduate courses need to be displayed (for example Course Search). 

### Events Calendar

The events calendar is a CMS for storing university event information. It stores:

* Event information (date, time, host, description, location and more…)
* Presenter information (name, biography, links and more…)
* Recording information (past recordings)
* Live streaming status (if your event is being live streamed it will appear on this site during the event). 

Any information stored in the events calendar can be pulled into another CMS via API, RSS or ATOM feed for localised display. Events which are displayed on the calendar go through an approval workflow. Events which are only required via API (for display on another website), must pass through a local approver for each host). 

A further advantage of storing your event information in the events calendar is that an events digest is emailed to a large subscription list each week. This results in a greater flow of traffic to your event webpage. 

The events calendar does not currently support ticketing - if required you are able to insert a booking URL to a service like Eventbrite - but this is something that we would like to add in the future. 

### Course Search

Course search is a CMS for storing and allowing prospective students to find our graduate and undergraduate courses. 

If you create a course page on your website, it is important that you add it to this directory. To add courses to Course Search contact [Brooke Lyons](mailto:brooke.lyons@unimelb.edu.au) in the Office of Admissions. 

### No CMS - static website hosted on the webfarm

Note: If you are not a professional web developer, we do not recommend using this approach to building a website. The CMS tools offered, in particular Matrix, will make your life much easier. Websites containing content such as event information, news or course information should not be built statically as this data needs to be syndicated across the university. 

If you are a web developer, a static website is a good way to build something quickly. The University provides a web farm to host static websites and we would recommend using this as opposed to obtaining your own external hosting.

To aid in the maintenance of your site, we strongly recommend using a static-site generator like [MiddlemanApp](http://middlemanapp.com) to create, compile and compress your website prior to publishing. A middleman theme can be aquired by contacting [Neil Ang](mailto:neil.ang@unimelb.edu.au).

If you are creating a static website, we also recommend using [Git](http://git.srm.com)/[Github](http://github.com) to version control your website and ensure the ongoing maintainability of your code. If these terms are not familiar to you, please use one of the CMS tools listed above. 
