;; https://github.com/technomancy/leiningen/blob/stable/doc/PROFILES.md
{:user {:plugins [[lein-pprint "1.3.2"]]
        :dependencies [[alembic "0.3.2"]
                       [clj-kondo "RELEASE"]]
        :aliases {"clj-kondo" ["run" "-m" "clj-kondo.main"]}}}
