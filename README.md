# Google Plus Badge - Particle for Gantry 5
This project contains a Gantry Particle and adds the [Google+ Badge API](https://developers.google.com/+/web/badge/) functionality to the Gantry templating framework. **Google Plus Badge** encapsulates the parameterization of the Google+ service within a Gantry Particle. Furthermore, it provides an easy, user friendly and GUI assisted configuration and integration. In the current revision the following CMS systems are supported:
* Joomla
* Wordpress
* Grav

## Prerequisites
* CMS (Joomla, Wordpress, Grav)
* Gantry 5 Templating Framework and Theme
* Google Plus Platform API

## Download
Choose the correct download for your target platform. Joomla Plugin System supported for the Gantry 5 themes - Helium and Hydrogen. The latest Particle version is **v1.2.4**.

**Attention:** When migrating from **v1.1.2** to **v1.2.0** or higher the existing settings of the particle will be reset.
___
**Default Particle:**
[English](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.particle.only.EN.v1.2.4.zip) / [Italian](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.particle.only.IT.v1.2.4.zip) / [German](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.particle.only.DE.v1.2.4.zip)

**Legacy Particle - Gantry <5.3.2:**
[English](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.particle.only.legacy.EN.v1.2.4.zip) / [Italian](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.particle.only.legacy.IT.v1.2.4.zip) / [German](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.particle.only.legacy.DE.v1.2.4.zip)

**Joomla Plugin - Hydrogen:**
[English](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.j3.hydrogen.EN.v1.2.4.zip) / [Italian](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.j3.hydrogen.IT.v1.2.4.zip) / [German](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.j3.hydrogen.DE.v1.2.4.zip)

**Joomla Plugin - Helium:**
[English](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.j3.helium.EN.v1.2.4.zip) / [Italian](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.j3.helium.IT.v1.2.4.zip) / [German](https://github.com/thexmanxyz/Google-Plus-Badge-Gantry/releases/download/v1.2.4/gpb.j3.helium.DE.v1.2.4.zip)
___

## Automatic Installation (Joomla only)
1. Download the Plugin of the Google Plus Badge Particle for **Hydrogen or Helium**.
2. Install it over the Joomla Plugin System.

## Manual Installation
1. Download the **Default or Legacy Package** of the Google Plus Badge Particle. If you are using Gantry **<5.3.2** please use the **Legacy Package** for compatibility reasons.
2. Extract the files.
3. Copy the `.html.twig` and the `.yaml` file to your particle folder. The target folder varies depending on the used system.
   
   * **Wordpress:** `/wp-content/themes/{gantry_theme}/custom/particles`
   * **Joomla:** `/templates/{gantry_theme}/custom/particles`
   * **Grav:** `/user/data/gantry5/themes/{gantry_theme}/particles`
   
## Configuration
 1. Go to your Gantry templating backend (e.g. Extensions/Templates).
 2. Switch to **Layout** and add the new appearing Particle called **Google+ Badge** either globally to your site (**base outline**), to a specific template or page by dragging it to the designated section.
 3. Configure the appearance according to your favor.
 
## Supported API Parameters and Particle Options
* Custom CSS Classes
* Site Types
  * Profile, Page and Community
* Theme
  * Light and Dark
* Orientation
  * Landscape and Portrait
* Badge Language (~60)
* Sizing of Badge
* Photo for Badge
* Badge Description
* Community Owner
* Loading Mechanism
* JS Priority and Placement (head or footer)
* JS Loading
  * Remote, Local and Default
* JS Execution
  * Asynchronous
  * Deferred

## Showroom
Insight of the Google Plus Badge - Gantry Particle configuration:

**Backend (1)** - *[Appearance](/screenshots/backend_appearance.png)*

![1](/screenshots/backend_appearance.png)

**Backend (2)** - *[JS](/screenshots/backend_js.png)*

![2](/screenshots/backend_js.png)

Examples for the different supported Google+ Badges:

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
