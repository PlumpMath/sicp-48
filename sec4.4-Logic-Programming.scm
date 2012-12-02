;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 4.4. 論理的プログラミング

;;; 前口上 {{{2
;; 計算機科学 | 数学
;; -------------------
;; 命令的     | 宣言的
;; how        | what

;; 式主導(Expression-oriented)の言語に関する"しゃれ(pun)"
;; "関数の値を記述する式は, またその値を計算する方法として解釈される"
;; (an expression that describe the value of a function may also be interpreted as a means of computing that value.)

;; 4.3節の非決定性プログラミングでは, 式は1つ以上の値を取ることができ, 計算は一価関数というよりは"関係"の記述になる.
;;  => 論理的プログラミングは4.3の拡張であり,
;;     関係的視点とユニフィケーション(unification)という記号パターンマッチングを組み合わせたものである.

;; 論理的プログラミングの力の由来は, 単一のwhatが多くのhow要素を持つことである.

;; 例: append
;    (define (append x y)
;      (if (null? x)
;        y
;        (cons (car x) (append (cdr x) y))))
;; この手続は,
;;   1. 第一のリストがカラの場合
;;   2. ふたつの部分のcons
;; というふたつの規則を"Lispに翻訳"したものと考えられる.
;; これらの規則によって
;; append('(a b) '(c d)) => ? という問題を解くだけではなく
;; append(x y) => '(a b c d) となるすべてのx,yを見つけよ
;; といった問題に答えることもできる. }}}2


;; 評価器の実装
;; 実装は4.4.4. から始まるが, それまでのコードも動かしたいよねってことで動くやつを持ってくる.
;; ref: http://www.serendip.ws/archives/2617
;; stream-common.scmと, 2次元table処理だけ切り出したtable.scmをloadすれば動いた.


