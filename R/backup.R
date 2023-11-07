
#Parent Alliance Inventory  *sum, alliance with partner, and shared alliance **probably should be formative (averaged)

pai129$pai_sum <- pai129$pai5 + pai129$pai7 + pai129$pai9 + pai129$pai12 + pai129$pai13 + pai129$pai14 + pai129$pai17 + pai129$pai19 + pai129$pai20 + pai129$pai21 + pai129$pai23 + pai129$pai24 + pai129$pai25 + pai129$pai26 + pai129$pai27 + pai129$pai28 + pai129$pai29
pai129$pai_partner <- pai129$pai13 + pai129$pai14 + pai129$pai19 + pai129$pai20 + pai129$pai21 + pai129$pai26 + pai129$pai27 + pai129$pai28 + pai129$pai29
pai129$pai_shared <- pai129$pai5 + pai129$pai7 + pai129$pai9 + pai129$pai12 + pai129$pai17 + pai129$pai23 + pai129$pai24 + pai129$pai25

#relationship quality *Support and abuse subscales  **summative or formative?

rq129$rq_support <- rq129$rq1 + rq129$rq2 + rq129$rq4 + rq129$rq8 + rq129$rq9
rq129$rq_abuse <- rq129$rq3 + rq129$rq5 + rq129$rq6 + rq129$rq7

#Mother/Father Involvement with Infant  *probably summative 

mfi129$mfi_sum <- mfi129$mfi1 + mfi129$mfi2 + mfi129$mfi3 + mfi129$mfi4 + mfi129$mfi5 + mfi129$mfi6 + mfi129$mfi7 + mfi129$mfi8
mfi129$mfia_sum <- mfi129$mfi1a + mfi129$mfi2a + mfi129$mfi3a + mfi129$mfi4a + mfi129$mfi5a + mfi129$mfi6a + mfi129$mfi7a + mfi129$mfi8a

#neglect subscale  *probably summative

neg129$neglect <- neg129$neg1 + neg129$neg2 + neg129$neg3 + neg129$neg4 + neg129$neg5


#pccts  psychological and physical subscales
pcc129$ccts_psy <- pcc129$pccts6 + pcc129$pccts8 + pcc129$pccts10 + pcc129$pccts12 + pcc129$pccts14
pcc129$ccts_phy <- pcc129$pccts3 + pcc129$pccts4 + pcc129$pccts7 + pcc129$pccts11 + pcc129$pccts13

#father attitudes *new set of subscales, preliminary tested only

fa129$fa_role <- fa129$fa2 + fa129$fa4 + fa129$fa5 + fa129$fa6
fa129$fa_ed <- fa129$fa10 + fa129$fa11
fa129$fa_mother <- fa129$fa13 + fa129$fa14


#parent stress **3 subscales  *have not explored these. 

psi129$psi_pd <- psi129$psi1 + psi129$psi2 + psi129$psi3 + psi129$psi4 + psi129$psi5 + 
  psi129$psi6 + psi129$psi7 + psi129$psi8 + psi129$psi9 + psi129$psi10 + psi129$psi11 + psi129$psi12
psi129$psi_cdi <- psi129$psi13 + psi129$psi14 + psi129$psi15 + psi129$psi16 + psi129$psi17 + 
  psi129$psi18 + psi129$psi19 + psi129$psi20 + psi129$psi21 + psi129$psi22 + psi129$psi23 + psi129$psi24
psi129$psi_dc <- psi129$psi25 + psi129$psi26 + psi129$psi27 + psi129$psi28 + psi129$psi29 + psi129$psi30 + 
  psi129$psi31 + psi129$psi32 + psi129$psi33 + psi129$psi34 + psi129$psi35 + psi129$psi36


#conflict tactics scale - parent to parent *I'll try to find all the definitions

cts129$cts_neg_m <- cts129$cts1 + cts129$cts7
cts129$cts_neg_p <- cts129$cts2 + cts129$cts8
cts129$cts_psy_m <- cts129$cts3 + cts129$cts13
cts129$cts_psy_p <- cts129$cts4 + cts129$cts14
cts129$cts_inj_m <- cts129$cts5 + cts129$cts15
cts129$cts_inj_p <- cts129$cts6 + cts129$cts16
cts129$cts_phy_m <- cts129$cts9 + cts129$cts11
cts129$cts_phy_p <- cts129$cts10 + cts129$cts12
cts129$cts_sex_m <- cts129$cts17 + cts129$cts19
cts129$cts_sex_p <- cts129$cts18 + cts129$cts20



