(defun c:UpdateDistances (/ base-point ss)
    ;; Prompt for the base point
    (setq base-point (getpoint "\nSelect base point: "))
        
    ;; Prompt to select blocks manually
    ;(setq block-selection (ssget))
    
    (if (setq ss (ssget (list(cons 0 "INSERT"))))
      (mapcar '(lambda (x) (vla-get-name (vlax-ename->vla-object x))) (vl-remove-if 'listp (mapcar 'cadr (ssnamex ss))))
    )

    (princ)
)
   
