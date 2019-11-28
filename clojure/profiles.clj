{:user
 {:plugins [#_[lein-localrepo "0.5.4"] ;; https://github.com/kumarshantanu/lein-localrepo
            #_[lein-nevam "0.1.2"]     ;; Convert pom.xml to project.clj
            [lein-pprint "1.2.0"]]     ;; Pretty-print a representation of the project map
  :dependencies [[alembic "0.3.2"]
                 #_[pjstadig/humane-test-output "0.8.3"]]
  #_:injections
  #_[(require 'pjstadig.humane-test-output)
     (pjstadig.humane-test-output/activate!)]}}
