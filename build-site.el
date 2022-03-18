(require 'ox-publish)

(setq org-confirm-babel-evaluate nil)
(setq org-export-babel-evaluate t)
(setq org-export-use-babel t)

(org-babel-do-load-languages 'org-babel-load-languages'((shell . t)))

(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-html-container-element "main"
      org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\"/>"
      )

(defun html/preamble (plist)
  (with-temp-buffer
    (insert-file-contents "./preamble.html") (buffer-string)))


(setq org-publish-project-alist
      '(("mosis.xyz"
         :recursive nil
         :base-directory "./"
         :publishing-directory "./public"
         :publishing-function org-html-publish-to-html
         :with-toc nil
         :with-author t
         :with-creator t
         :section-numbers nil
         :time-stamp-file nil
         :language en
         :html-preamble html/preamble
         )
        ("blog"
         :recursive nil
         :base-directory "./articles"
         :publishing-directory "./public/articles"
         :publishing-function org-html-publish-to-html
         :sitemap-filename "index.org"
         :auto-sitemap t
         :with-toc nil
         :with-author t
         :with-creator t
         :section-numbers nil
         :time-stamp-file nil
         :language en
         :html-preamble html/preamble
         )))

(org-publish-all t)

(message "Build complete!")
