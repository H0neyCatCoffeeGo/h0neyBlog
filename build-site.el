(require 'ox-publish)

(setq org-html-validation-link nil            ;; Don't show validation link
      org-html-head-include-scripts nil       ;; Use our own scripts
      org-html-head-include-default-style nil ;; Use our own styles
      org-html-head "<link rel=\"stylesheet\" href= ./style.css >")

;; Define the publishing project
(setq org-publish-project-alist
      '(
        ("my-org-site"
         :base-directory "/home/ok/h0neyBlog/content"
         :base-extension "org"
         :publishing-directory "/home/ok/h0neyBlog/public"
         :recursive t
         :publishing-function org-html-publish-to-html
         :with-toc nil                ;; Do not include a table of contents
         :section-numbers nil)))


;; Generate the site output
(org-publish-all t)

(message "BUILD COMPLETE!")
