# Google Plus Badge - Particle for Gantry 5
This project contains a Gantry Particle and adds the [Google+ Badge API](https://developers.google.com/+/web/badge/) functionality to the Gantry templating framework. Google Plus Badge encapsulates the parameterization of the Google+ service within a Gantry Particle. Furthermore, it provides a easy, user friendly and GUI assisted configuration and integration. In the current revision the following CMS systems are supported:
* Joomla
* Wordpress
* Grav

## Prerequisites
* CMS (Joomla, Wordpress, Grav)
* Gantry 5 Templating Framework and Theme
* Google Plus Platform API

## Download
Choose the correct download for your target platform. Joomla Plugin supported for Gantry 5 themes (Helium / Hydrogen):

**Default Particle:**
[English](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.0/gpb.particle.only.v1.0.zip) / [Italian](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.0/gpb.particle.only.IT.v1.0.zip)

**Legacy Particle (Gantry <5.3.2):**
[English](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.0/gpb.particle.only.legacy.v1.0.zip) / [Italian](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.0/gpb.particle.only.legacy.IT.v1.0.zip)

**Joomla Plugin (Hydrogen):**
[English](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.0/gpb-j3-hydrogen-v1.0.zip) / [Italian](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.0/gpb-j3-hydrogen-IT-v1.0.zip)

**Joomla Plugin (Helium):**
[English](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.0/gpb-j3-helium-v1.0.zip) / [Italian](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.0/gpb-j3-helium-IT-v1.0.zip)

## Automatic Installation (Joomla only)
1. Download the Plugin version (Hydrogen or Helium) of the Google Plus Badge Particle
2. Install over the Joomla Plugin System
3. Go to your Gantry templating backend (e.g. Extensions/Templates)
4. Switch to **Layout** and add the new appearing Particle called **Google+ Badge** either globally to your site (**base outline**), to a specific template or page by dragging it to the designated section.
5. Configure the appearance according to your favor

## Manual Installation
1. Download the correct version of the Google Plus Badge Particle Package
2. Extract the files
3. Copy the **html.twig** and the **yaml** file to your particle folder 
   * the target folder for Joomla would be **/templates/{gantry_theme}/particles**
   * the folder(s) for Wordpress and Grav may vary
   * If you are using Gantry **<5.3.2** please use the **legacy yaml** instead
4. Go to your Gantry templating backend (e.g. Extensions/Templates)
5. Switch to **Layout** and add the new appearing Particle called **Google+ Badge** either globally to your site (**base outline**), to a specific template or page by dragging it to the designated section.
6. Configure the appearance according to your favor

## Supported API Parameters and Particle Options
* Custom CSS Class
* Site types
  * Profile, Page and Community
* Theme
  * Light and Dark
* Orientation
  * Landscape and Portrait
* Badge Language (~60)
* Sizing of badge
* Photo for badge
* Badge description
* Community owner
* Loading Mechanism
* JS priority and placement (head / footer)
* Server local JS loading
* Disable CDN
* JS Execution
  * Asynchronous
  * Deferred

## Showroom
Insight of Google Plus Badge - Gantry Particle configuration:

**Backend (1)** - *[Appearance](/screenshots/backend_appearance.png)*

![1](/screenshots/backend_appearance.png)

**Backend (2)** - *[JS](/screenshots/backend_js.png)*

![2](/screenshots/backend_js.png)

Examples for different supported Google+ Badges:

**Frontend (1)** - *[Profile](/screenshots/frontend_profile.png)*

![3](/screenshots/frontend_profile.png)

**Frontend (2)** - *[Page](/screenshots/frontend_page.png)*

![4](/screenshots/frontend_page.png)

**Frontend (3)** - *[Community](/screenshots/frontend_community.png)*

![5](/screenshots/frontend_community.png)

## Future Tasks
* more languages

## Known Issues
None

## Dependencies
[Google+ Badge](https://developers.google.com/+/web/badge/)

[Gantry 5 Framework](http://gantry.org/)

## Credits
Thanks to Google for the Google Plus Platform API and the Gantry 5 Framework team for providing a modern templating framework.

## by [mariantanase](https://github.com/mariantanase), [thex](https://github.com/thexmanxyz)
Copyright (c) 2017, free to use in personal and commercial software as per the [license](/LICENSE.md).
