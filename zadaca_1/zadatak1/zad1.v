(*zad1b*)
Goal forall X Y Z, ~(~X /\ Y /\ Z) /\ ~(X /\ Y /\ ~Z) /\ (X /\ ~Y /\ Z) <-> X /\ ~Y /\ Z.
Proof.
  intros X Y Z.
  split.
  intros [H1 [H2 H3]].
  destruct H3 as [HX [HNY HZ]].
  split.
  - exact HX.
  - split.
    + exact HNY.
    + exact HZ.
  -intros [HX [HNY HZ]].
  split.
  -- now intros [H4 [H5 H6]].
  -- split.
  *intros nx. destruct nx. now destruct H0.
  *now split.
Qed.

(*zad1a*)
Goal forall X Y, (X /\ ~Y) \/ (~X /\ ~Y) \/ (~X /\ Y) <-> ~(Y /\ X).
Proof.
intros X Y.
split.
-intros H ny. destruct H, ny.
--now destruct H.
--destruct H.
+now destruct H.
+now destruct H.
-intros ny.
Abort.
