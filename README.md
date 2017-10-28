# Google Plus Badge - Particle for Gantry 5
This project contains a Gantry Particle and adds the [Google+ Badge API](https://developers.google.com/+/web/badge/) functionality to the Gantry templating framework. Google Plus Badge encapsulates the parameterization of this Google+ Badge service within a Gantry Particle. Furthermore, it provides a easy, user friendly and GUI assisted configuration and integration. In the current revision the following CMS systems are supported:
* Joomla
* Wordpress
* Grav

## Prerequisites
* CMS (Joomla, Wordpress, Grav)
* Gantry 5 Templating Framework and Theme
* Google Plus Platform API

## Download / Installation
1. [Download v1.2](https://github.com/thexmanxyz/Cookie-Consent-Neo-Gantry/releases/download/v1.2/ccn.atom.only.v1.2.zip) of the Google Plus Badge Particle Package
2. Extract the files
3. Copy the **html.twig** and the **yaml** file to your particle folder 
   * the target folder for Joomla would be **/templates/{gantry_theme}/particles**
   * the folder(s) for Wordpress and Grav may vary
   * If you are using Gantry <5.3.2 please use the legacy yaml instead
4. Go to your Gantry templating backend (e.g. Extensions/Templates)
5. Switch to **Layout** and add the new appearing Particle called **Google+ Badge** either globally to your site (**base outline**), to a specific template or page by dragging it to the designated section.
6. Configure the appearance according to your favor

## Supported API Parameters and Particle Options
* 

## Showroom
Insight of Google Plus Badge - Gantry Particle configuration:

**Backend (1)** - *[Appearance](/screenshots/backend_appearance.png)*

![1](/screenshots/backend_appearance.png)

**Backend (2)** - *[JS](/screenshots/backend_js.png)*

![2](/screenshots/backend_js.png)

## Future Tasks
* more languages

## Known Issues
None

## Dependencies
[Google+ Badge](https://developers.google.com/+/web/badge/)

[Gantry 5 Framework](http://gantry.org/)

## Credits
Thanks to Google for the Google Plus Platform API and the Gantry 5 Framework team for providing a modern templating framework.

## by [marian](https://github.com/mariantanase), [thex](https://github.com/thexmanxyz)
Copyright (c) 2017, free to use in personal and commercial software as per the [license](/LICENSE.md).
