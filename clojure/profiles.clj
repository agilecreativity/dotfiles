;; See: https://github.com/kumarshantanu/lein-localrepo
{:user {:plugins [[lein-localrepo "0.5.4"]
                  [lein-try "0.4.3"]
                  ;; Convert pom.xml to project.clj
                  ;; Note: from https://github.com/thickey/lein-nevam
                  [lein-nevam "0.1.2"]
                  ;; https://github.com/venantius/ultra
                  [venantius/ultra "0.5.2"]]
        ;; Experimental
        :dependencies [[pjstadig/humane-test-output "0.8.3"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
