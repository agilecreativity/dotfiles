;; https://github.com/technomancy/leiningen/blob/stable/doc/PROFILES.md
{:user {:plugins [[lein-pprint "1.3.2"
                   lein-ancient "0.6.5"]]
        :dependencies [#_[alembic "0.3.2"]
                       [clj-kondo "RELEASE"]
                       [antq "RELEASE"]]
        :aliases {"clj-kondo" ["run" "-m" "clj-kondo.main"]
                  "outdated"  ["run" "-m" "antq.core"]}}}
