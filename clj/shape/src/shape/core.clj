(ns shape.core)

(defprotocol Shape
  (area [this]))

(defrecord Square [side]
  Shape
  (area [this]
    (* side side)))

(defrecord Circle [r]
  Shape
  (area [this]
    (* 3.14 r r)))


