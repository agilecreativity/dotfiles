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
                  ;;[venantius/ultra "0.5.2"]

                  ;; Pretty-print a representation of the project map
                  [lein-pprint "1.2.0"]

                  ;; For quick typing
                  [com.palletops/lein-shorthand "0.4.0"]]

        ;; See: https://github.com/pallet/alembic
        :shorthand {. [alembic.still/distill alembic.still/lein]}

        ;; Experimental
        :dependencies [[pjstadig/humane-test-output "0.8.3"]
                       ;; See: https://github.com/pallet/alembic
                       [alembic "0.3.2"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
