(ns infer.core
  (:require [clojure.core.typed :as t])
  (:use clojure.test))

;; Start: Generated by clojure.core.typed - DO NOT EDIT
(declare HMap33250 HMap33251)
(t/defalias HMap33251 '{:op ':node, :left HMap33250, :right HMap33250})
(t/defalias HMap33250 '{:op ':leaf, :val t/Int})
(t/ann nodes [(t/U HMap33251 HMap33250) :-> t/Int])
(t/ann visit-leaf [[HMap33250 :-> ?] (t/U HMap33251 HMap33250) :-> ?])
;; End: Generated by clojure.core.typed - DO NOT EDIT

(defn nodes "Returns the number of nodes in the tree t."
  [t] (case (:op t)
        :node (+ 1 (nodes (:left t)) (nodes (:right t)))
        :leaf 1))
(defn visit-leaf "Updates :leaf nodes in tree t with function f."
  [f t] (case (:op t)
          :node (assoc t :left (visit-leaf f (:left t))
                         :right (visit-leaf f (:right t)))
          :leaf (f t)))