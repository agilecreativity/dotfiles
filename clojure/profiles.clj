;; https://github.com/technomancy/leiningen/blob/stable/doc/PROFILES.md
{:user {:plugins [[lein-pprint "1.3.2"
                   lein-ancient "0.7.0"
                   lein-cloverage "1.2.2"]]
        :dependencies [[alembic "0.3.2"]
                       [clj-kondo "RELEASE"]
                       [antq "RELEASE"]
                       [vvvvalvalval/scope-capture "0.3.2"]]
        :injections [(require 'sc.api)]
        :aliases {"clj-kondo" ["run" "-m" "clj-kondo.main"]
                  "outdated"  ["run" "-m" "antq.core"]}}}
