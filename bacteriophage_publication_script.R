####LIBRARIES####

library(tidyverse)

####RENAMING DATASETS####

BactFin <- bacteriophage_survey_data %>% 
  filter(Finished == "True")

BactFinMT <- BactFin %>% 
  filter(Source == "Mturk")

BactFinSM <- BactFin %>% 
  filter(Source == "SocialMedia")

MTurk <- BactFinMT

M2 <- as.numeric(MTurk$`It is important to me that the food I am feeding my pet is safe to eat and will not make him/her sick.`)
M3 <- as.numeric(MTurk$`I am concerned that bacteria in raw pet foods can make pets and/or people sick`)
M4 <- as.numeric (MTurk$`I am concerned that bacteria in canned pet foods and treats can make pets and/or people sick`)
M5 <- as.numeric (MTurk$`I am concerned that bacteria in dry pet foods and treats can make pets and/or people sick`)
M6 <- as.numeric (MTurk$`I am concerned that bacteria in freeze dried or dehydrated food and treats can make pets and/or people sick`)
M7 <- as.numeric (MTurk$`I wash my hands with soap and water after handling raw pet food or treats`)
M8 <- as.numeric (MTurk$`I wash my hands with soap and water after handling canned pet food or treats`)
M9 <- as.numeric (MTurk$`I wash my hands with soap and water after handling dry pet food or treats`)
M10 <- as.numeric (MTurk$`Where possible, I store pet food and/or treats away from where human food is stored or prepared`)
M11 <- as.numeric (MTurk$`I scoop pet food using my pet’s food bowl`)
M12 <- as.numeric (MTurk$`I use a dedicated scoop/spoon/cup/utensil to serve pet food`)
M13 <- as.numeric (MTurk$`I clean and disinfect surfaces that raw pet food touches`)
M14 <- as.numeric (MTurk$`I thaw raw pet food on a countertop or in a sink`)
M15 <- as.numeric (MTurk$`Organic pet food is more environmentally sustainable than conventional pet food`)
M16 <- as.numeric (MTurk$`A natural pet food option is more sustainable than a conventional one`)
M17 <- as.numeric (MTurk$`Sustainability is defined as the preservation of resources for future generations`)
M18 <- as.numeric (MTurk$`Protein sources are variable in their environmental sustainability scoring (e.g. beef, tofu)`)
M19 <- as.numeric (MTurk$`Minimizing food waste promotes environmental sustainability`)
M20 <- as.numeric (MTurk$`Environmental sustainability of pet food is important to me`)
M21 <- as.numeric (MTurk$`Environmental sustainability guides my decisions when purchasing pet food`)
M22 <- as.numeric (MTurk$`A bacteriophage is a type of virus that infects and kills bacteria...48`)
M23 <- as.numeric (MTurk$`Bacteriophages are naturally occurring on earth...49`)
M24 <- as.numeric (MTurk$`Bacteriophages are exclusively produced in a laboratory...50`)
M25 <- as.numeric (MTurk$`Bacteriophages are considered one of the most abundant free-living entities on earth...51`)
M26 <- as.numeric (MTurk$`Bacteriophage applications are approved by Health Canada as food processing aids for human consumption...52`)
M27 <- as.numeric (MTurk$`Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salmonella)...53`)
M28 <- as.numeric (MTurk$`Bacteriophages are highly specific, and generally non-toxic to humans, animals and plants...54`)
M29 <- as.numeric (MTurk$`Bacteriophage applications to food are odourless and tasteless to humans...55`)
M30 <- as.numeric (MTurk$`I would feel comfortable eating food that has bacteriophage antimicrobial agents applied for food safety purposes`)
M31 <- as.numeric (MTurk$`I would feel comfortable feeding my pet food that has bacteriophage antimicrobial agents applied for food safety purposes`)
M32 <- as.numeric (MTurk$`I believe bacteriophage additives to food as antimicrobial agents would help environmental sustainability (due to decreased food waste as a result of recalls)`)
M33 <- as.numeric (MTurk$`A bacteriophage is a type of virus that infects and kills bacteria...61`)
M34 <- as.numeric (MTurk$`Bacteriophages are naturally occurring on earth...62`)
M35 <- as.numeric (MTurk$`Bacteriophages are exclusively produced in a laboratory...63`)
M36 <- as.numeric (MTurk$`Bacteriophages are considered one of the most abundant free-living entities on earth...64`)
M37 <- as.numeric (MTurk$`Bacteriophage applications are approved by Health Canada as food processing aids for human consumption...65`)
M38 <- as.numeric (MTurk$`Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salmonella)...66`)
M39 <- as.numeric (MTurk$`Bacteriophages are highly specific, and generally non-toxic to humans, animals and plants...67`)
M40 <- as.numeric (MTurk$`Bacteriophage applications to food are odourless and tasteless to humans...68`)
M41 <- as.numeric (MTurk$`I would feel comfortable eating food that had bacteriophage additives`)
M42 <- as.numeric (MTurk$`I would feel comfortable feeding my pet food that had bacteriophage additives`)
M43 <- as.numeric (MTurk$`I believe bacteriophage additives to food would help environmental sustainability (due to decreased food waste as a result of recalls)`)
M44 <- as.numeric (MTurk$`It is unnatural`)
M45 <- as.numeric (MTurk$`I don’t trust that it is safe`)
M46 <- as.numeric (MTurk$`I don’t think it would help environmental sustainability`)
M47 <- as.numeric (MTurk$`I don’t think it would help prevent food waste`)
M48 <- as.numeric (MTurk$`I don’t think my pets would like the taste`)

###soc meds

SocMed <- BactFinSM

SM1 <- as.numeric(SocMed$`Do you have a dog(s), cat(s) or both? - Cat(s)` )
SM2 <- as.numeric(SocMed$`It is important to me that the food I am feeding my pet is safe to eat and will not make him/her sick.`)
SM3 <- as.numeric(SocMed$`I am concerned that bacteria in raw pet foods can make pets and/or people sick`)
SM4 <- as.numeric (SocMed$`I am concerned that bacteria in canned pet foods and treats can make pets and/or people sick`)
SM5 <- as.numeric (SocMed$`I am concerned that bacteria in dry pet foods and treats can make pets and/or people sick`)
SM6 <- as.numeric (SocMed$`I am concerned that bacteria in freeze dried or dehydrated food and treats can make pets and/or people sick`)
SM7 <- as.numeric (SocMed$`I wash my hands with soap and water after handling raw pet food or treats`)
SM8 <- as.numeric (SocMed$`I wash my hands with soap and water after handling canned pet food or treats`)
SM9 <- as.numeric (SocMed$`I wash my hands with soap and water after handling dry pet food or treats`)
SM10 <- as.numeric (SocMed$`Where possible, I store pet food and/or treats away from where human food is stored or prepared`)
SM11 <- as.numeric (SocMed$`I scoop pet food using my pet’s food bowl`)
SM12 <- as.numeric (SocMed$`I use a dedicated scoop/spoon/cup/utensil to serve pet food`)
SM13 <- as.numeric (SocMed$`I clean and disinfect surfaces that raw pet food touches`)
SM14 <- as.numeric (SocMed$`I thaw raw pet food on a countertop or in a sink`)
SM15 <- as.numeric (SocMed$`Organic pet food is more environmentally sustainable than conventional pet food`)
SM16 <- as.numeric (SocMed$`A natural pet food option is more sustainable than a conventional one`)
SM17 <- as.numeric (SocMed$`Sustainability is defined as the preservation of resources for future generations`)
SM18 <- as.numeric (SocMed$`Protein sources are variable in their environmental sustainability scoring (e.g. beef, tofu)`)
SM19 <- as.numeric (SocMed$`Minimizing food waste promotes environmental sustainability`)
SM20 <- as.numeric (SocMed$`Environmental sustainability of pet food is important to me`)
SM21 <- as.numeric (SocMed$`Environmental sustainability guides my decisions when purchasing pet food`)
SM22 <- as.numeric (SocMed$`A bacteriophage is a type of virus that infects and kills bacteria...48`)
SM23 <- as.numeric (SocMed$`Bacteriophages are naturally occurring on earth...49`)
SM24 <- as.numeric (SocMed$`Bacteriophages are exclusively produced in a laboratory...50`)
SM25 <- as.numeric (SocMed$`Bacteriophages are considered one of the most abundant free-living entities on earth...51`)
SM26 <- as.numeric (SocMed$`Bacteriophage applications are approved by Health Canada as food processing aids for human consumption...52`)
SM27 <- as.numeric (SocMed$`Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salmonella)...53`)
SM28 <- as.numeric (SocMed$`Bacteriophages are highly specific, and generally non-toxic to humans, animals and plants...54`)
SM29 <- as.numeric (SocMed$`Bacteriophage applications to food are odourless and tasteless to humans...55`)
SM30 <- as.numeric (SocMed$`I would feel comfortable eating food that has bacteriophage antimicrobial agents applied for food safety purposes`)
SM31 <- as.numeric (SocMed$`I would feel comfortable feeding my pet food that has bacteriophage antimicrobial agents applied for food safety purposes`)
SM32 <- as.numeric (SocMed$`I believe bacteriophage additives to food as antimicrobial agents would help environmental sustainability (due to decreased food waste as a result of recalls)`)
SM33 <- as.numeric (SocMed$`A bacteriophage is a type of virus that infects and kills bacteria...61`)
SM34 <- as.numeric (SocMed$`Bacteriophages are naturally occurring on earth...62`)
SM35 <- as.numeric (SocMed$`Bacteriophages are exclusively produced in a laboratory...63`)
SM36 <- as.numeric (SocMed$`Bacteriophages are considered one of the most abundant free-living entities on earth...64`)
SM37 <- as.numeric (SocMed$`Bacteriophage applications are approved by Health Canada as food processing aids for human consumption...65`)
SM38 <- as.numeric (SocMed$`Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salmonella)...66`)
SM39 <- as.numeric (SocMed$`Bacteriophages are highly specific, and generally non-toxic to humans, animals and plants...67`)
SM40 <- as.numeric (SocMed$`Bacteriophage applications to food are odourless and tasteless to humans...68`)
SM41 <- as.numeric (SocMed$`I would feel comfortable eating food that had bacteriophage additives`)
SM42 <- as.numeric (SocMed$`I would feel comfortable feeding my pet food that had bacteriophage additives`)
SM43 <- as.numeric (SocMed$`I believe bacteriophage additives to food would help environmental sustainability (due to decreased food waste as a result of recalls)`)
SM44 <- as.numeric (SocMed$`It is unnatural`)
SM45 <- as.numeric (SocMed$`I don’t trust that it is safe`)
SM46 <- as.numeric (SocMed$`I don’t think it would help environmental sustainability`)
SM47 <- as.numeric (SocMed$`I don’t think it would help prevent food waste`)
SM48 <- as.numeric (SocMed$`I don’t think my pets would like the taste`)

# Combined

Combined <- BactFin

CO1 <- as.numeric(Combined$`Do you have a dog(s), cat(s) or both? - Cat(s)` )
CO2 <- as.numeric(Combined$`It is important to me that the food I am feeding my pet is safe to eat and will not make him/her sick.`)
CO3 <- as.numeric(Combined$`I am concerned that bacteria in raw pet foods can make pets and/or people sick`)
CO4 <- as.numeric (Combined$`I am concerned that bacteria in canned pet foods and treats can make pets and/or people sick`)
CO5 <- as.numeric (Combined$`I am concerned that bacteria in dry pet foods and treats can make pets and/or people sick`)
CO6 <- as.numeric (Combined$`I am concerned that bacteria in freeze dried or dehydrated food and treats can make pets and/or people sick`)
CO7 <- as.numeric (Combined$`I wash my hands with soap and water after handling raw pet food or treats`)
CO8 <- as.numeric (Combined$`I wash my hands with soap and water after handling canned pet food or treats`)
CO9 <- as.numeric (Combined$`I wash my hands with soap and water after handling dry pet food or treats`)
CO10 <- as.numeric (Combined$`Where possible, I store pet food and/or treats away from where human food is stored or prepared`)
CO11 <- as.numeric (Combined$`I scoop pet food using my pet’s food bowl`)
CO12 <- as.numeric (Combined$`I use a dedicated scoop/spoon/cup/utensil to serve pet food`)
CO13 <- as.numeric (Combined$`I clean and disinfect surfaces that raw pet food touches`)
CO14 <- as.numeric (Combined$`I thaw raw pet food on a countertop or in a sink`)
CO15 <- as.numeric (Combined$`Organic pet food is more environmentally sustainable than conventional pet food`)
CO16 <- as.numeric (Combined$`A natural pet food option is more sustainable than a conventional one`)
CO17 <- as.numeric (Combined$`Sustainability is defined as the preservation of resources for future generations`)
CO18 <- as.numeric (Combined$`Protein sources are variable in their environmental sustainability scoring (e.g. beef, tofu)`)
CO19 <- as.numeric (Combined$`Minimizing food waste promotes environmental sustainability`)
CO20 <- as.numeric (Combined$`Environmental sustainability of pet food is important to me`)
CO21 <- as.numeric (Combined$`Environmental sustainability guides my decisions when purchasing pet food`)
CO22 <- as.numeric (Combined$`A bacteriophage is a type of virus that infects and kills bacteria...48`)
CO23 <- as.numeric (Combined$`Bacteriophages are naturally occurring on earth...49`)
CO24 <- as.numeric (Combined$`Bacteriophages are exclusively produced in a laboratory...50`)
CO25 <- as.numeric (Combined$`Bacteriophages are considered one of the most abundant free-living entities on earth...51`)
CO26 <- as.numeric (Combined$`Bacteriophage applications are approved by Health Canada as food processing aids for human consumption...52`)
CO27 <- as.numeric (Combined$`Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salmonella)...53`)
CO28 <- as.numeric (Combined$`Bacteriophages are highly specific, and generally non-toxic to humans, animals and plants...54`)
CO29 <- as.numeric (Combined$`Bacteriophage applications to food are odourless and tasteless to humans...55`)
CO30 <- as.numeric (Combined$`I would feel comfortable eating food that has bacteriophage antimicrobial agents applied for food safety purposes`)
CO31 <- as.numeric (Combined$`I would feel comfortable feeding my pet food that has bacteriophage antimicrobial agents applied for food safety purposes`)
CO32 <- as.numeric (Combined$`I believe bacteriophage additives to food as antimicrobial agents would help environmental sustainability (due to decreased food waste as a result of recalls)`)
CO33 <- as.numeric (Combined$`A bacteriophage is a type of virus that infects and kills bacteria...61`)
CO34 <- as.numeric (Combined$`Bacteriophages are naturally occurring on earth...62`)
CO35 <- as.numeric (Combined$`Bacteriophages are exclusively produced in a laboratory...63`)
CO36 <- as.numeric (Combined$`Bacteriophages are considered one of the most abundant free-living entities on earth...64`)
CO37 <- as.numeric (Combined$`Bacteriophage applications are approved by Health Canada as food processing aids for human consumption...65`)
CO38 <- as.numeric (Combined$`Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salmonella)...66`)
CO39 <- as.numeric (Combined$`Bacteriophages are highly specific, and generally non-toxic to humans, animals and plants...67`)
CO40 <- as.numeric (Combined$`Bacteriophage applications to food are odourless and tasteless to humans...68`)
CO41 <- as.numeric (Combined$`I would feel comfortable eating food that had bacteriophage additives`)
CO42 <- as.numeric (Combined$`I would feel comfortable feeding my pet food that had bacteriophage additives`)
CO43 <- as.numeric (Combined$`I believe bacteriophage additives to food would help environmental sustainability (due to decreased food waste as a result of recalls)`)
CO44 <- as.numeric (Combined$`It is unnatural`)
CO45 <- as.numeric (Combined$`I don’t trust that it is safe`)
CO46 <- as.numeric (Combined$`I don’t think it would help environmental sustainability`)
CO47 <- as.numeric (Combined$`I don’t think it would help prevent food waste`)
CO48 <- as.numeric (Combined$`I don’t think my pets would like the taste`)

####COMBINED PAIRED T TESTS BEFORE AND AFTER####

#A bacteriophage is a type of virus that infects and kills bacteria

t.test(CO22, CO33, paired = TRUE, alternative = "two.sided")

mean(CO22)
sd(CO22)
mean(CO33)
sd(CO33)

#Bacteriophages are naturally occurring on earth

t.test(CO23, CO34, paired = TRUE, alternative = "two.sided")

mean(CO23)
sd(CO23)
mean(CO34)
sd(CO34)

#Bacteriophages are exclusively produced in a laboratory

t.test(CO24, CO35, paired = TRUE, alternative = "two.sided")

mean(CO24)
sd(CO24)
mean(CO35)
sd(CO35)

#Bacteriophages are considered one of the most abundant free-living entities on earth

t.test(CO25, CO36, paired = TRUE, alternative = "two.sided")

mean(CO25)
sd(CO25)
mean(CO36)
sd(CO36)

#Bacteriophage applications are approved by Health Canada as food processing aids for human consumption

t.test(CO26, CO37, paired = TRUE, alternative = "two.sided")

mean(CO26)
sd(CO26)
mean(CO37)
sd(CO37)

#Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salmonella)

t.test(CO27, CO38, paired = TRUE, alternative = "two.sided")

mean(CO27)
sd(CO27)
mean(CO38)
sd(CO38)

#Bacteriophages are highly specific, and generally non-toxic to humans, animals and plants

t.test(CO28, CO39, paired = TRUE, alternative = "two.sided")

mean(CO28)
sd(CO28)
mean(CO39)
sd(CO39)

#Bacteriophage applications to food are odourless and tasteless to humans

t.test(CO29, CO40, paired = TRUE, alternative = "two.sided")

mean(CO29)
sd(CO29)
mean(CO40)
sd(CO40)

#I would feel comfortable eating food that has bacteriophage antimicrobial agents applied for food safety purposes

t.test(CO30, CO41, paired = TRUE, alternative = "two.sided")

mean(CO30)
sd(CO30)
mean(CO41)
sd(CO41)

#I would feel comfortable feeding my pet food that has bacteriophage antimicrobial agents applied for food safety purposes

t.test(CO31, CO42, paired = TRUE, alternative = "two.sided")

mean(CO31)
sd(CO31)
mean(CO42)
sd(CO42)

#I believe bacteriophage additives to food as antimicrobial agents would help environmental sustainability (due to decreased food waste as a result of recalls)

t.test(CO32, CO43, paired = TRUE, alternative = "two.sided")

mean(CO32)
sd(CO32)
mean(CO43)
sd(CO43)

####MTURK PAIRED T TESTS BEFORE AND AFTER####

#A bacteriophage is a type of virus that infects and kills bacteria

t.test(M22, M33, paired = TRUE, alternative = "two.sided")

mean(M22)
sd(M22)
mean(M33)
sd(M33)

#Bacteriophages are naturally occurring on earth

t.test(M23, M34, paired = TRUE, alternative = "two.sided")

mean(M23)
sd(M23)
mean(M34)
sd(M34)

#Bacteriophages are exclusively produced in a laboratory

t.test(M24, M35, paired = TRUE, alternative = "two.sided")

mean(M24)
sd(M24)
mean(M35)
sd(M35)

#Bacteriophages are Mnsidered one of the most abundant free-living entities on earth

t.test(M25, M36, paired = TRUE, alternative = "two.sided")

mean(M25)
sd(M25)
mean(M36)
sd(M36)

#Bacteriophage applications are approved by Health Canada as food processing aids for human Mnsumption

t.test(M26, M37, paired = TRUE, alternative = "two.sided")

mean(M26)
sd(M26)
mean(M37)
sd(M37)

#Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salmonella)

t.test(M27, M38, paired = TRUE, alternative = "two.sided")

mean(M27)
sd(M27)
mean(M38)
sd(M38)

#Bacteriophages are highly specific, and generally non-toxic to humans, animals and plants

t.test(M28, M39, paired = TRUE, alternative = "two.sided")

mean(M28)
sd(M28)
mean(M39)
sd(M39)

#Bacteriophage applications to food are odourless and tasteless to humans

t.test(M29, M40, paired = TRUE, alternative = "two.sided")

mean(M29)
sd(M29)
mean(M40)
sd(M40)

#I would feel Mmfortable eating food that has bacteriophage antimicrobial agents applied for food safety purposes

t.test(M30, M41, paired = TRUE, alternative = "two.sided")

mean(M30)
sd(M30)
mean(M41)
sd(M41)

#I would feel Mmfortable feeding my pet food that has bacteriophage antimicrobial agents applied for food safety purposes

t.test(M31, M42, paired = TRUE, alternative = "two.sided")

mean(M31)
sd(M31)
mean(M42)
sd(M42)

#I believe bacteriophage additives to food as antimicrobial agents would help environmental sustainability (due to decreased food waste as a result of recalls)

t.test(M32, M43, paired = TRUE, alternative = "two.sided")

mean(M32)
sd(M32)
mean(M43)
sd(M43)

####SOCIAL MEDIA PAIRED T TESTS BEFORE AND AFTER####

#A bacteriophage is a type of virus that infects and kills bacteria

t.test(SM22, SM33, paired = TRUE, alternative = "two.sided")

mean(SM22)
sd(SM22)
mean(SM33)
sd(SM33)


#Bacteriophages are naturally occurring on earth

t.test(SM23, SM34, paired = TRUE, alternative = "two.sided")

mean(SM23)
sd(SM23)
mean(SM34)
sd(SM34)

#Bacteriophages are exclusively produced in a laboratory

t.test(SM24, SM35, paired = TRUE, alternative = "two.sided")

mean(SM24)
sd(SM24)
mean(SM35)
sd(SM35)

#Bacteriophages are SMnsidered one of the SMost abundant free-living entities on earth

t.test(SM25, SM36, paired = TRUE, alternative = "two.sided")

mean(SM25)
sd(SM25)
mean(SM36)
sd(SM36)


#Bacteriophage applications are approved by Health Canada as food processing aids for huSMan SMnsuSMption

t.test(SM26, SM37, paired = TRUE, alternative = "two.sided")

mean(SM26)
sd(SM26)
mean(SM37)
sd(SM37)

#Addition of bacteriophages to foods can decrease bacteria found on the food (e.g. salSMonella)

t.test(SM27, SM38, paired = TRUE, alternative = "two.sided")

mean(SM27)
sd(SM27)
mean(SM38)
sd(SM38)

#Bacteriophages are highly specific, and generally non-toxic to huSMans, aniSMals and plants

t.test(SM28, SM39, paired = TRUE, alternative = "two.sided")

mean(SM28)
sd(SM28)
mean(SM39)
sd(SM39)

#Bacteriophage applications to food are odourless and tasteless to huSMans

t.test(SM29, SM40, paired = TRUE, alternative = "two.sided")

mean(SM29)
sd(SM29)
mean(SM40)
sd(SM40)

#I would feel SMSMfortable eating food that has bacteriophage antiSMicrobial agents applied for food safety purposes

t.test(SM30, SM41, paired = TRUE, alternative = "two.sided")

mean(SM30)
sd(SM30)
mean(SM41)
sd(SM41)

#I would feel comfortable feeding my pet food that has bacteriophage

t.test(SM31, SM42, paired = TRUE, alternative = "two.sided")

mean(SM31)
sd(SM31)
mean(SM42)
sd(SM42)

#I believe bacteriophage additives to food as anti...

t.test(SM32, SM43, paired = TRUE, alternative = "two.sided")

mean(SM32)
sd(SM32)
mean(SM43)
sd(SM43)

####COMPARING BETWEEN SOURCES####

t.test(M1, SM1, alternative = "two.sided")
t.test(M2, SM2, alternative = "two.sided")
t.test(M3, SM3, alternative = "two.sided")

sd(M3)
sd(SM3)

t.test(M4, SM4, alternative = "two.sided")
t.test(M5, SM5, alternative = "two.sided")
t.test(M6, SM6, alternative = "two.sided")

sd(M6)
sd(SM6)

t.test(M7, SM7, alternative = "two.sided")
t.test(M8, SM8, alternative = "two.sided")
t.test(M9, SM9, alternative = "two.sided")
t.test(M10, SM10, alternative = "two.sided")

sd(M10)
sd(SM10)

t.test(M11, SM11, alternative = "two.sided")
sd(M11)
sd(SM11)

t.test(M12, SM12, alternative = "two.sided")
t.test(M13, SM13, alternative = "two.sided")
sd(M13)
sd(SM13)

t.test(M14, SM14, alternative = "two.sided")
t.test(M15, SM15, alternative = "two.sided")

sd(M15)
sd(SM15)

t.test(M16, SM16, alternative = "two.sided")

sd(M16)
sd(SM16)

t.test(M17, SM17, alternative = "two.sided")
sd(M17)
sd(SM17)

t.test(M18, SM18, alternative = "two.sided")

t.test(M19, SM19, alternative = "two.sided")
sd(M19)
sd(SM19)

t.test(M20, SM20, alternative = "two.sided")

t.test(M21, SM21, alternative = "two.sided")
sd(M21)
sd(SM21)

t.test(M22, SM22, alternative = "two.sided")
sd(M22)
sd(SM22)

t.test(M23, SM23, alternative = "two.sided")

t.test(M24, SM24, alternative = "two.sided")
sd(M24)
sd(SM24)

t.test(M25, SM25, alternative = "two.sided")
sd(M25)
sd(SM25)

t.test(M26, SM26, alternative = "two.sided")
sd(M26)
sd(SM26)

t.test(M27, SM27, alternative = "two.sided")
sd(M27)
sd(SM27)

t.test(M28, SM28, alternative = "two.sided")

t.test(M29, SM29, alternative = "two.sided")
sd(M29)
sd(SM29)

t.test(M30, SM30, alternative = "two.sided")
t.test(M31, SM31, alternative = "two.sided")
t.test(M32, SM32, alternative = "two.sided")

t.test(M33, SM33, alternative = "two.sided")
sd(M33)
sd(SM33)

t.test(M34, SM34, alternative = "two.sided")
sd(M34)
sd(SM34)

t.test(M35, SM35, alternative = "two.sided")

t.test(M36, SM36, alternative = "two.sided")

t.test(M37, SM37, alternative = "two.sided")
sd(M37)
sd(SM37)

t.test(M38, SM38, alternative = "two.sided")

t.test(M39, SM39, alternative = "two.sided")
sd(M39)
sd(SM39)

t.test(M40, SM40, alternative = "two.sided")#

t.test(M41, SM41, alternative = "two.sided")#
sd(M41)
sd(SM41)

t.test(M42, SM42, alternative = "two.sided")#
sd(M42)
sd(SM42)

t.test(M43, SM43, alternative = "two.sided")#
sd(M43)
sd(SM43)

t.test(M44, SM44, alternative = "two.sided")
t.test(M45, SM45, alternative = "two.sided")
t.test(M46, SM46, alternative = "two.sided")
t.test(M47, SM47, alternative = "two.sided")
t.test(M48, SM48, alternative = "two.sided")

CO44 <- as.numeric (Combined$`It is unnatural`)
CO45 <- as.numeric (Combined$`I don’t trust that it is safe`)
CO46 <- as.numeric (Combined$`I don’t think it would help environmental sustainability`)
CO47 <- as.numeric (Combined$`I don’t think it would help prevent food waste`)
CO48 <- as.numeric (Combined$`I don’t think my pets would like the taste`)

