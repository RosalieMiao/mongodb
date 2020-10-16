(ns jepsen.elle-test
  (:require [clojure.test :refer :all]
            [clojure.pprint :as p]
            [elle.list-append :as a]))

(def h [{:type :ok, :value [[:append :x 1] [:r :y [1]]]}
        {:type :ok, :value [[:append :x 2] [:append :y 1]]}
        {:type :ok, :value [[:r :x [1 2]]]}])

(p/pprint (a/check {:consistency-models [:serializable], :directory "out"} h))