{:user
 {:plugins [[lein-localrepo "0.5.4"] ;; https://github.com/kumarshantanu/lein-localrepo
            [lein-nevam "0.1.2"]     ;; Convert pom.xml to project.clj
            [lein-pprint "1.2.0"]]   ;; Pretty-print a representation of the project map
  :dependencies [[alembic "0.3.2"]
                 [pjstadig/humane-test-output "0.8.3"]]
  :injections [(require 'pjstadig.humane-test-output)
               (pjstadig.humane-test-output/activate!)]}}
