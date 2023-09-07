# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "sweetalert2", to: "https://ga.jspm.io/npm:sweetalert2@11.7.1/dist/sweetalert2.all.js"
pin "localtunnel", to: "https://ga.jspm.io/npm:localtunnel@2.0.2/localtunnel.js"
pin "#lib/adapters/http.js", to: "https://ga.jspm.io/npm:axios@0.21.4/lib/adapters/xhr.js"
pin "axios", to: "https://ga.jspm.io/npm:axios@0.21.4/index.js"
pin "debug", to: "https://ga.jspm.io/npm:debug@4.3.2/src/browser.js"
pin "events", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/events.js"
pin "fs", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/fs.js"
pin "ms", to: "https://ga.jspm.io/npm:ms@2.1.2/index.js"
pin "net", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/net.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "stream", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/stream.js"
pin "tls", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/tls.js"
pin "url", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/url.js"
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/esm/index.js"
