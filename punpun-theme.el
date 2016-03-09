(defgroup punpun nil
  "A bleak theme"
  :group 'themes
  :prefix "punpun-")

(deftheme punpun "A bleak theme")

(defcustom punpun-dark-p nil
  "Use the dark version of the theme?"
  :type '(boolean (const :tag "Light" nil)
                  (const :tag "Dark" t)))

(defun punpun-toggle ()
  "Toggle between dark and light version of punpun-theme."
  (interactive)
  (setq punpun-dark-p (not punpun-dark-p))
  (load-theme 'punpun-theme t))

(defvar punpun-colors
  '((base0  ("#eeeeee" "#080808") ("color-255" "color-232"))
    (base1  ("#d0d0d0" "#1c1c1c") ("color-252" "color-234"))
    (base2  ("#b2b2b2" "#3a3a3a") ("color-249" "color-237"))
    (base3  ("#949494" "#585858") ("color-246" "color-240"))
    (base4  ("#767676" "#767676") ("color-243" "color-243"))
    (base5  ("#585858" "#949494") ("color-240" "color-246"))
    (base6  ("#3a3a3a" "#b2b2b2") ("color-237" "color-249"))
    (base7  ("#1c1c1c" "#d0d0d0") ("color-234" "color-252"))
    (yellow ("#ffd700" "#ffd700") ("color-220" "color-220"))
    (orange ("#d75f00" "#d75f00") ("color-166" "color-166"))
    (red    ("#ff005f" "#ff005f") ("color-197" "color-197"))
    (lime   ("#87ff00" "#87ff00") ("color-118" "color-118"))
    (green  ("#00af00" "#00af00") ("color-34"  "color-34" ))
    (olive  ("#878700" "#878700") ("color-100" "color-100"))
    (blue   ("#5f00ff" "#5f00ff") ("color-57"  "color-57" ))
    (cyan   ("#0087ff" "#0087ff") ("color-33"  "color-33" ))
    (violet ("#d75fd7" "#d75fd7") ("color-170" "color-170"))))

(defun punpun-color (shade display)
  (nth (if punpun-dark-p 1 0)
       (nth (if display 1 2)
            (assoc shade punpun-colors))))

(defun punpun-set-faces (faces)
  (apply #'custom-theme-set-faces 'punpun
         (mapcar #'punpun-transform-face faces)))

(defun punpun-transform-face (face)
  (let* ((name (car face))
         (spec (cdr face))
         (graphic-spec (punpun-transform-spec spec 'graphic))
         (tty-spec (punpun-transform-spec spec 'tty)))
    `(,name ((((type graphic)) ,@graphic-spec)
             (((type tty)) ,@tty-spec)))))

(defun punpun-transform-spec (spec display)
  (let (output)
    (while spec
      (let* ((key (car spec))
             (value (cadr spec))
             (color (punpun-color value display)))
        (cond
         ((and (memq key '(:box :underline)) (listp value))
          (setq output (append output
                               (list key (punpun-transform-spec value display)))))
         ((and (not (memq value '(t unspecified)))
               (memq key '(:foreground :background :underline :overline :strike-through :color))
               color)
          (setq output (append output (list key color))))
         (t (setq output (append output (list key value))))))
      (setq spec (cddr spec)))
    output))

(punpun-set-faces
 '((default :foreground base5 :background base0)
   (cursor :background base4)
   (region :foreground unspecified :background base2)
   (fringe :foreground base7 :background base1)
   (vertical-border :foreground base6)

   (escape-glyph :inherit bold :foreground olive)
   (font-lock-builtin-face :inherit bold :foreground base4)
   (font-lock-comment-face :foreground base4)
   (font-lock-constant-face :inherit italic)
   (font-lock-function-name-face :inherit italic)
   (font-lock-keyword-face :inherit bold :foreground base4)
   (font-lock-negation-char-face :inherit bold)
   (font-lock-regexp-grouping-construct :inherit bold)
   (font-lock-regexp-grouping-backslash :inherit bold)
   (font-lock-string-face :foreground base4)
   (font-lock-type-face :inherit italic)
   (font-lock-variable-name-face :inherit italic)
   (font-lock-warning-face :inherit bold :foreground orange)

   (error :foreground red)
   (success :foreground green)
   (warning :inherit bold :foreground orange)

   (mode-line :foreground base5 :background base1)
   (mode-line-inactive :foreground base3 :background base1)

   ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'punpun)
