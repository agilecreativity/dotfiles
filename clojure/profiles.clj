;; See: https://github.com/kumarshantanu/lein-localrepo
{:user {:plugins [;; Try new api quickly using the repl
                  [lein-try "0.4.3"]
                  ;;[lein-localrepo "0.5.4"]
                  ;; Convert pom.xml to project.clj
                  ;; Note: from https://github.com/thickey/lein-nevam
                  [lein-nevam "0.1.2"]
                  ;; A Leiningen plugin for a superior development environment
                  ;; See: [Introduction Blog Post](https://blog.venanti.us/ultra/)
                  ;; https://github.com/venantius/ultra
                  [venantius/ultra "0.5.2"]
                  ;; Keep adding more stuff here
                  ]
        ;; Experimental
        :dependencies [[pjstadig/humane-test-output "0.8.3"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
