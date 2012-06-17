; sec2.2.2のcount-leavesをaccumulationで再定義

; 再掲 accumulate
(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))


(define (count-leaves t)
  (accumulate
    (lambda (leaves total) (+ leaves total)) ; �K�poperation��total�ւ̑������킹
    0 ; �����t�̐���0
    (map (lambda (sub-tree) ; accumulate��sequence�Ƃ��ēn���̂́At�ɑ΂���map��count-leaves��������
           (if (pair? sub-tree)
                      (count-leaves sub-tree)
                      1)) ; pair����Ȃ���Ηt��1�J�E���g�A�b�v
           t)))

; ������Ɨ��Z���ۂ����@������B��������flatten(��)���g���Ă��B
(define (count-leaves2 t)
  (accumulate + 0 (map (lambda (x) 1) (enumulate-tree t))))


; ���܂������Ȃ��B
(define (count-leaves3 t)
  (accumulate + 0 (map (lambda (subtree)
                         (cond ((null? subtree) 0)
                               ((pair? subtree) (count-leaves3 subtree))
                               (else (accumulate + 0 subtree)))))))



