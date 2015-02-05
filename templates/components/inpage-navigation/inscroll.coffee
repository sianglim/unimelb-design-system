unless window.UOMInpageScrolling
  window.UOMInpageScrolling = ->
    Math.easeInOutQuad = (curr, start, change, duration) ->
      curr /= duration/2
      if (curr < 1)
        change/2*curr*curr + start
      else
        curr--
        -change/2 * (curr*(curr-2) - 1) + start

    class window.InPage
      constructor: (@el) ->
        t = this

        unless @el.hasAttribute('data-no-scroll')
          @el.addEventListener 'click', (e) ->

            tel = e.srcElement
            outer = document.documentElement

            if e.target
              tel = e.target
              if /(Firefox)/g.test(navigator.userAgent) or /(Trident)/g.test(navigator.userAgent)
                outer = document.querySelector('html')
              else
                outer = document.body

            if tel
              target = tel.getAttribute('href')
              if target != "#" and target != "#sitemap"
                e.preventDefault()
                target = document.querySelector(tel.getAttribute('href'))

                # Tabs scroll to nav
                up = (el) ->
                  if el.getAttribute('data-tabbed') == '' and el.getAttribute('role') == 'tabs'
                    return el
                  else
                    if el.parentNode and el.parentNode!=document
                      return up(el.parentNode)
                    else
                      return false

                tabbed = up(tel)
                if tabbed and this.parentNode.parentNode.hasClass("jump-navigation") == false
                  target = tabbed

                if target
                  t.to = if document.querySelectorAll('.page-header.floating').length then target.offsetTop else target.offsetTop - 40;
                  t.element = outer
                  t.scrollTo()

      scrollTo: ->
        element = @element
        duration = 600
        start = element.scrollTop
        change = @to - start
        curr = 0
        increment = 10

        animateScroll = ->
          curr += increment
          element.scrollTop = Math.easeInOutQuad(curr, start, change, duration)
          setTimeout(animateScroll, increment) if curr < duration

        animateScroll() if change != 0

    if supportedmodernbrowser
      new InPage(el) for el in document.querySelectorAll('a[href^="#"]')

  if window.attachEvent
    window.attachEvent 'onload', ->
      UOMInpageScrolling()
  else
    document.addEventListener 'DOMContentLoaded', ->
      UOMInpageScrolling()
