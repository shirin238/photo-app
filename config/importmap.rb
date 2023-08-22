# Pin npm packages by running ./bin/importmap

pin "application", preload: true



pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin "popper", to: 'popper.js', preload: true

pin "bootstrap", to: 'bootstrap.min.js', preload: true



#change this

#import "@hotwired/turbo-rails"
#to this

#import { Turbo } from "@hotwired/turbo-rails"
#Turbo.session.drive = false=end