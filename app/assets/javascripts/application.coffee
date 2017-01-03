#= require_self
#= require jquery
#= require jquery-ui
#= require jquery_ujs
#= require turbolinks
#= require bootstrap-sprockets

#= require_tree ./common
#= require_tree ./pages

window.App ||= {}
App.Views ||= {}
App.Views.Pages ||= {}

App.init = ->
  appData = $('body').data()
  if viewName = appData['view']
    [viewsClass, viewName] = viewName.split(".")
    if appData['environment'] == 'development'
      console.log(viewsClass, viewName)
    if App.Views[viewsClass]?[viewName]?
      (window.view = new App.Views[viewsClass][viewName]).render()
    if App.Views[viewsClass]?["Common"]?
      (new App.Views[viewsClass]["Common"]).render()

  $(document).ready ->
    $(".alert").delay(5000).slideUp()
    return

  $('.modal').on 'show.bs.modal', (e)->
    return

  $('.modal').on 'hidden.bs.modal', (e)->
    $(".alert").addClass("fade")
    return
  return
