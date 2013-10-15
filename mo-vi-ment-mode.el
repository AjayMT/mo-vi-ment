;;; mo-vi-ment-mode.el --- Provide vi-like cursor movement that's easy on the fingers

;; Copyright (C) 2013 Ajay MT

;; Author: Ajay MT <ajay.tatachar@gmail.com> (http://ajaymt.ruhoh.com)
;; Keywords: convenience
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; Keybindings


;;; Code:

(defvar mo-vi-ment-mode-keymap (make-keymap) "mo-vi-ment-mode keymap.")
(define-key mo-vi-ment-mode-keymap (kbd "M-j") 'backward-char)
(define-key mo-vi-ment-mode-keymap (kbd "M-;") 'forward-char)
(define-key mo-vi-ment-mode-keymap (kbd "M-k") 'next-line)
(define-key mo-vi-ment-mode-keymap (kbd "M-l") 'previous-line)
(define-key mo-vi-ment-mode-keymap (kbd "M-J") 'move-beginning-of-line)
(define-key mo-vi-ment-mode-keymap (kbd "M-:") 'move-end-of-line)
(define-key mo-vi-ment-mode-keymap (kbd "M-K") 'scroll-up-command)
(define-key mo-vi-ment-mode-keymap (kbd "M-L") 'scroll-down-command)

;;;###autoload
(define-minor-mode mo-vi-ment-mode
  ;; Description
  "Toggle Mo-vi-ment mode. 
Interactively with no argument, this command toggles mo-vi-ment mode.
A positive prefix argument enables the mode, any other prefix
argument disables it. From Lisp, argument omitted or nil enables
the mode, `toggle' toggles the state.

When mo-vi-ment mode is enabled, the following key bindings are set -

    \\{mo-vi-ment-mode-keymap}"
  
  ;; Initial value
  nil
  
  ;; The indicator for the mode-line
  " mo-vi-ment"
  
  ;; Keybindings
  mo-vi-ment-mode-keymap
  
  ;; Globalize it
  :global t)

(provide 'mo-vi-ment-mode)

;;; mo-vi-ment-mode.el ends here
