;; https://github.com/technomancy/leiningen/blob/stable/doc/PROFILES.md
{:provided
 {:dependencies
  [[djblue/portal "0.21.2"]]}
 :user
 {:plugins
  [[cider/cider-nrepl "0.27.4"]
   [lein-ancient "1.0.0-RC3"]
   [lein-check-namespace-decls "1.0.4"]
   [lein-cljfmt "0.8.0"]
   [lein-nsorg "0.3.0"]
   [nrepl "0.9.0"]
   [refactor-nrepl "3.1.0"]]}
  :dependencies
   [#_[alembic "0.3.2"]
    [antq "RELEASE"]
    [clj-kondo "RELEASE"]]
  :aliases {"clj-kondo" ["run" "-m" "clj-kondo.main"]
            "outdated"  ["run" "-m" "antq.core"]}}
