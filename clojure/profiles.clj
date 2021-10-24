;; https://github.com/technomancy/leiningen/blob/stable/doc/PROFILES.md
{:user
 {:plugins
  [[cider/cider-nrepl "0.25.9"]
   [lein-ancient "0.7.0"]
   [lein-check-namespace-decls "1.0.4"]
   [lein-cljfmt "0.8.0"]
   [lein-nsorg "0.3.0"]
   [refactor-nrepl/refactor-nrepl "3.0.0-alpha13"]]}
  :dependencies
   [#_[alembic "0.3.2"]
    [clj-kondo "RELEASE"]
    [antq "RELEASE"]
    [vvvvalvalval/scope-capture "0.3.2"]]
  :injections [(require 'sc.api)]
  :aliases {"clj-kondo" ["run" "-m" "clj-kondo.main"]
            "outdated"  ["run" "-m" "antq.core"]}}
