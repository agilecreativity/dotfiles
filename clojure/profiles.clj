{:user
  {:plugins [;;Try new api quickly using the repl
             ;;[lein-try "0.4.3"]

             ;;=> https://github.com/kumarshantanu/lein-localrepo
             ;;[lein-localrepo "0.5.4"]

             ;;Convert pom.xml to project.clj
             ;;[lein-nevam "0.1.2"]

             ;;A Leiningen plugin for a superior development environment
             ;;[Introduction Blog Post](https://blog.venanti.us/ultra/)
             ;;=> https://github.com/venantius/ultra
             ;;[venantius/ultra "0.5.2"]

             ;;=> Pretty-print a representation of the project map
             [lein-pprint "1.2.0"]

             ;;=> https://github.com/pallet/alembic
             [com.palletops/lein-shorthand "0.4.0"]]
   :shorthand {. [alembic.still/distill alembic.still/lein]}
   :dependencies [[alembic "0.3.2"]
                  [pjstadig/humane-test-output "0.8.3"]]

   :injections [(require 'pjstadig.humane-test-output)
                (pjstadig.humane-test-output/activate!)]}}
