RUG Warwick 2023-05-16: Interactive data visualisation in R Shiny with
{htmlwidgets}
================

This repo contains materials for Charlie Hadley’s talk on interactive
data visualisations with R and Shiny.

- This readme file provides more information on what I showed in my
  slides

- The slide deck is unfortunately quite Frankensteinian. A [live copy
  lives on Google
  Slides](https://docs.google.com/presentation/d/13_LhfTMLHnKDNPMBm9AAVi3c1aMlnqL02Jt6w29iMts/edit?usp=sharing)
  or you can download the PDF from this repo.

- During the talk I wrote some live code - that can also be found in
  this repo.

# Quarto

Quarto is a literate programming environment that’s somewhat similiar to
Jupyter notebooks, but most similiar to RMarkdown.

Using Quarto we can build all sorts of different content, including:

- Interactive HTML reports

- Interactive HTML slides

- Static print-quality PDF, MS Word and PowerPoint documents

- Entire websites (eg )

You can build these things using R, Python or Julia. There’s lots of
documentation [here](https://quarto.org/) or there’s [an awesome 2h
welcome to Quarto webinar](https://www.youtube.com/watch?v=yvi5uXQMvu4)
by Tom Mock.

Quarto is the spiritual successor to RMarkdown. RMarkdown will not die
but it will likely begin to stagnate somewhat with respect to Quarto.
There’s very little friction to moving from RMarkdown to Quarto.

# htmlwidgets.org

{htmlwidgets} is an incredible tool that allows R developers to build
wrappers for JavaScript packages. This means that we end users of R have
lots of packages that allow us to make [interactive charts, maps,
network diagrams and more](http://gallery.htmlwidgets.org/).

You can embed {htmlwidgets} into Quarto documents and into Shiny apps

# Shiny

Pre July 2022 there was only one meaning to “shiny” - which was the
ability to create interactive web applications (dashboards) with R.
There is now an **alpha** version of Shiny for Python and a pre-alpha
build of something else. So I’kll break each of these down.

I **highly** recommend [Joe Cheng’s fascinating and very moving keynote
on the future of
Shiny](rstudio.com/conference/2022/keynotes/past-future-shiny).

## Shiny in R land

Shiny is a completely self-contained framework for building interactive
things with R. For really impressive examples consider looking at
[RStudio’s Shiny Competition
winners](https://www.rstudio.com/blog/winners-of-the-3rd-annual-shiny-contest/).
I’ve got a training course about [learning Shiny on LinkedIn
Learning](https://www.linkedin.com/learning/building-data-apps-with-r-and-shiny-essential-training).

In order for shiny apps to work they need to live on a server. There are
3 choices available for you:

- shinyapps.io is a “fully hosted solution” with a freemium business
  model. This means there’s a free account that allows you to upload
  shiny apps with zero messing around with a server. The paid tiers
  provide more resources and allow password protection/authentification.
  I setup the [Interactive Data Network at University of
  Oxford](https://idn.it.ox.ac.uk/) and they use the most expensive
  tier - \$299/month.

- Open Source Shiny Server is a fully open sourced solution which you
  can self-host. You’d need to roll your own authentification layer with
  LDAP etc.

- RStudio Connect is a commercially licensed product that provides a
  content management system for Shiny, Quarto and {plumber} APIs. The
  marketing materials don’t really make it clear how useful the product
  is, but they have really good tech folks internally so contact them
  for more information.

## Shiny in Python land

This is really exciting and will eventually mean you can write shiny
apps in Python using extremely similar syntax to Shiny for R - but
importantly it will use the same approach to reactive programming. This
means if you understand the mechanics of updating/controlling a Shiny
app for R you’ll be able to understand it in Python too.

The primary benefit of Shiny for Python is you will be able to directly
reuse existing Python code inside of a Shiny app without needing to
learn any R.

## Something else entirely: shiny & WebAssembly

At the moment shiny apps do all their computation on the server. This
means there’s overhead to going back and forwards between the client and
server, and we need a persistent and always open connection to the
server.

It would be really awesome if we could run some code directly in the web
browser. Unfortunately, the web browser doesnt know how to run R or
Python. Until 2015 the only really viable solution for running code in
the browser was to use JavaScript - which is how htmlwidgets work!.

In 2015 WebAssembly was announced and provides a way to run compiled
code in the browser. This would allow for high performance computing -
at least in comparison to previous solutions! - in the web browser.

[Shinylive](https://shiny.rstudio.com/py/docs/shinylive.html)
demonstrates the ability for **simple** Shiny Python apps to be compiled
into WebAssembly. At the moment it’s very limited and is in a pre-alpha
state. There is an **even more limited and pre-alpha** version of
[webR - R in the browser](https://github.com/georgestagg/webR). This
will eventually allows us to have Shiny for R running in the browser.
