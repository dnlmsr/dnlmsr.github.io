(require 'ox-publish)

(setq org-confirm-babel-evaluate nil)
(setq org-export-babel-evaluate t)
(setq org-export-use-babel t)

(org-babel-do-load-languages 'org-babel-load-languages'((shell . t)))

(defun html/preamble (plist)
  (with-temp-buffer
    (insert-file-contents "./preamble.html") (buffer-string)))

(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-html-doctype "html5"
      org-html-html5-fancy t
      org-html-container-element "main"
      org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\"/>"
      org-html-head-extra "<link rel=\"stylesheet\" href=\"/stylesheet.css\"/>"
      org-export-with-toc nil
      org-export-with-author t
      org-export-with-creator nil
      org-export-with-section-numbers nil
      org-export-with-timestamps nil
      org-export-time-stamp-file nil
      org-export-default-language "en"
      )

(setq org-publish-project-alist
      '(("mosis.xyz"
         :recursive nil
         :base-directory "./"
         :publishing-directory "./public"
         :publishing-function org-html-publish-to-html
         :html-preamble html/preamble
         )
        ("blog"
         :recursive nil
         :base-directory "./articles"
         :publishing-directory "./public/articles"
         :publishing-function org-html-publish-to-html
         :sitemap-filename "index.org"
         :sitemap-title "Blog and articles"
         :auto-sitemap t
         :html-preamble html/preamble
         )))

(org-publish-all t)
(copy-file "stylesheet.css" "public/stylesheet.css")

(message "Build complete!")
