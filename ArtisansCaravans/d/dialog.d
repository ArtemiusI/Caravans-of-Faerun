BEGIN C0CAR#01
/*
DESTINATION GLOBALS
 1 = Beregost
 2 = Nashkel
 3 = Friendly Arm Inn
 4 = Ulgoth's Beard
 5 = Baldur's Gate
 6 = Durlag's Tower
 7 = Gullykin
*/

CHAIN IF WEIGHT #-1 ~GlobalGT("Chapter","GLOBAL",4) Global("C0CaravanHalfOff","GLOBAL",0)~ THEN C0CAR#01 caravan
~Looking to travel? My caravan can take you down any road on the Sword Coast at half the rate as by foot, safety and comfort ensured. With the roads being safer in recent times, travel fees are also only half their original price.~
DO ~SetGlobal("C0CaravanHalfOff","GLOBAL",1)~
END
  ++ ~I'd like to hire your caravan.~ + caravan.destination
  ++ ~Not right now.~ + caravan.no

CHAIN IF WEIGHT #-1 ~True()~ THEN C0CAR#01 caravan
~Looking to travel? My caravan can take you down any road on the Sword Coast at half the rate as by foot, safety and comfort ensured.~
END
  ++ ~I'd like to hire your caravan.~ + caravan.destination
  ++ ~Not right now.~ + caravan.no

CHAIN C0CAR#01 caravan.destination
~Where to?~
END
// BEREGOST
  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Nashkel.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",2)
                                                                                                                        SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay80

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Nashkel.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",2)
                                                                                                                       SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay40

  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~The Friendly Arm Inn.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",3)
                                                                                                      SetGlobal("C0CaravanTravelTime","GLOBAL",6)~ + caravan.pay60

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~The Friendly Arm Inn.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",3)
                                                                                                     SetGlobal("C0CaravanTravelTime","GLOBAL",6)~ + caravan.pay30

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Ulgoth's Beard.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",4)
                                                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",18)~ + caravan.pay180

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Ulgoth's Beard.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",4)
                                                                                               SetGlobal("C0CaravanTravelTime","GLOBAL",18)~ + caravan.pay90

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Baldur's Gate.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",5)
                                                                                              SetGlobal("C0CaravanTravelTime","GLOBAL",10)~ + caravan.pay50

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",14)~ + caravan.pay140

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                               SetGlobal("C0CaravanTravelTime","GLOBAL",14)~ + caravan.pay70

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",10)~ + caravan.pay100

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",10)~ + caravan.pay50

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",6)~ + caravan.pay60

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%3300")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",6)~ + caravan.pay30

// NASHKEL
  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Beregost.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",1)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay80

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Beregost.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",1)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay40

  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~The Friendly Arm Inn.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",3)
                                                                                                      SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay120

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~The Friendly Arm Inn.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",3)
                                                                                                     SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay60

  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Ulgoth's Beard.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",4)
                                                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",24)~ + caravan.pay240

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Ulgoth's Beard.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",4)
                                                                                               SetGlobal("C0CaravanTravelTime","GLOBAL",24)~ + caravan.pay120

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Baldur's Gate.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",5)
                                                                                              SetGlobal("C0CaravanTravelTime","GLOBAL",16)~ + caravan.pay80

  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",16)~ + caravan.pay160

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                               SetGlobal("C0CaravanTravelTime","GLOBAL",16)~ + caravan.pay80

  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay120

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay60

  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay80

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay40

  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~High Hedge.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",9)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",10)~ + caravan.pay100

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%4800")~ + ~High Hedge.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",9)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",10)~ + caravan.pay50

// FRIENDLY ARM INN
  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Beregost.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",1)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",6)~ + caravan.pay60

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Beregost.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",1)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",6)~ + caravan.pay30

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Nashkel.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",2)
                                                                                                                        SetGlobal("C0CaravanTravelTime","GLOBAL",14)~ + caravan.pay140

  + ~GlobalGT("Chapter","GLOBAL",1) GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Nashkel.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",2)
                                                                                                                       SetGlobal("C0CaravanTravelTime","GLOBAL",14)~ + caravan.pay70

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Ulgoth's Beard.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",4)
                                                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay120

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Ulgoth's Beard.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",4)
                                                                                               SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay60

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Baldur's Gate.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",5)
                                                                                              SetGlobal("C0CaravanTravelTime","GLOBAL",4)~ + caravan.pay20

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",20)~ + caravan.pay200

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                               SetGlobal("C0CaravanTravelTime","GLOBAL",20)~ + caravan.pay100

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",16)~ + caravan.pay160

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",16)~ + caravan.pay80

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay120

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay60

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~High Hedge.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",9)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay80

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%2300")~ + ~High Hedge.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",9)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay40

// ULGOTH'S BEARD
  + ~!GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Beregost.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",1)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",20)~ + caravan.pay200

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Beregost.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",1)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",20)~ + caravan.pay100

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Nashkel.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",2)
                                                                                                                        SetGlobal("C0CaravanTravelTime","GLOBAL",28)~ + caravan.pay280

  + ~GlobalGT("Chapter","GLOBAL",1) GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Nashkel.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",2)
                                                                                                                       SetGlobal("C0CaravanTravelTime","GLOBAL",28)~ + caravan.pay140

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~The Friendly Arm Inn.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",3)
                                                                                                      SetGlobal("C0CaravanTravelTime","GLOBAL",14)~ + caravan.pay140

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~The Friendly Arm Inn.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",3)
                                                                                                     SetGlobal("C0CaravanTravelTime","GLOBAL",14)~ + caravan.pay70

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Baldur's Gate.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",5)
                                                                                              SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay40

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",32)~ + caravan.pay320

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                               SetGlobal("C0CaravanTravelTime","GLOBAL",32)~ + caravan.pay160

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",28)~ + caravan.pay280

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",28)~ + caravan.pay140

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",24)~ + caravan.pay240

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",24)~ + caravan.pay120

  + ~GlobalGT("Chapter","GLOBAL",1) !GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~High Hedge.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",9)
                                                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",20)~ + caravan.pay200

  + ~GlobalGT("Chapter","GLOBAL",4) AreaCheck("%bg1_eet_symbol%1000")~ + ~High Hedge.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",9)
                                                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",20)~ + caravan.pay100

// BALDUR'S GATE
  + ~AreaCheck("%bg1_eet_symbol%0900")~ + ~Beregost.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",1)
                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay60

  + ~AreaCheck("%bg1_eet_symbol%0900")~ + ~Nashkel.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",2)
                                                         SetGlobal("C0CaravanTravelTime","GLOBAL",20)~ + caravan.pay100

  + ~AreaCheck("%bg1_eet_symbol%0900")~ + ~The Friendly Arm Inn.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",3)
                                                                      SetGlobal("C0CaravanTravelTime","GLOBAL",6)~ + caravan.pay30

  + ~AreaCheck("%bg1_eet_symbol%0900")~ + ~Ulgoth's Beard.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",4)
                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",8)~ + caravan.pay40

  + ~AreaCheck("%bg1_eet_symbol%0900")~ + ~Durlag's Tower.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",6)
                                                                                               SetGlobal("C0CaravanTravelTime","GLOBAL",24)~ + caravan.pay120

  + ~AreaCheck("%bg1_eet_symbol%0900")~ + ~Gullykin.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",7)
                                                          SetGlobal("C0CaravanTravelTime","GLOBAL",20)~ + caravan.pay100

  + ~AreaCheck("%bg1_eet_symbol%0900")~ + ~Ulcaster Ruins.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",8)
                                                                SetGlobal("C0CaravanTravelTime","GLOBAL",14)~ + caravan.pay70

  + ~AreaCheck("%bg1_eet_symbol%0900")~ + ~High Hedge.~ DO ~SetGlobal("C0CaravanDestination","GLOBAL",9)
                                                            SetGlobal("C0CaravanTravelTime","GLOBAL",12)~ + caravan.pay60

  ++ ~Actually, I've changed my mind.~ EXIT

CHAIN C0CAR#01 caravan.pay20
~That'll be 20 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(20)~ + ~Here's the money.~ DO ~TakePartyGold(20)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(40)~ + ~Here's the money.~ DO ~TakePartyGold(40)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(60)~ + ~Here's the money.~ DO ~TakePartyGold(60)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(80)~ + ~Here's the money.~ DO ~TakePartyGold(80)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(100)~ + ~Here's the money.~ DO ~TakePartyGold(100)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(120)~ + ~Here's the money.~ DO ~TakePartyGold(120)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(20)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(40)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(60)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(80)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(100)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(120)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay30
~That'll be 30 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(30)~ + ~Here's the money.~ DO ~TakePartyGold(30)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(60)~ + ~Here's the money.~ DO ~TakePartyGold(60)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(90)~ + ~Here's the money.~ DO ~TakePartyGold(90)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(120)~ + ~Here's the money.~ DO ~TakePartyGold(120)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(150)~ + ~Here's the money.~ DO ~TakePartyGold(150)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(180)~ + ~Here's the money.~ DO ~TakePartyGold(180)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(30)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(60)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(90)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(120)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(150)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(180)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay40
~That'll be 40 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(40)~ + ~Here's the money.~ DO ~TakePartyGold(40)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(80)~ + ~Here's the money.~ DO ~TakePartyGold(80)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(120)~ + ~Here's the money.~ DO ~TakePartyGold(120)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(160)~ + ~Here's the money.~ DO ~TakePartyGold(160)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(200)~ + ~Here's the money.~ DO ~TakePartyGold(200)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(240)~ + ~Here's the money.~ DO ~TakePartyGold(240)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(40)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(80)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(120)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(160)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(200)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(240)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay50
~That'll be 50 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(50)~ + ~Here's the money.~ DO ~TakePartyGold(50)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(100)~ + ~Here's the money.~ DO ~TakePartyGold(100)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(150)~ + ~Here's the money.~ DO ~TakePartyGold(150)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(200)~ + ~Here's the money.~ DO ~TakePartyGold(200)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(250)~ + ~Here's the money.~ DO ~TakePartyGold(250)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(300)~ + ~Here's the money.~ DO ~TakePartyGold(300)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(50)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(100)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(150)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(200)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(250)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(300)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay60
~That'll be 60 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(60)~ + ~Here's the money.~ DO ~TakePartyGold(60)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(120)~ + ~Here's the money.~ DO ~TakePartyGold(120)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(180)~ + ~Here's the money.~ DO ~TakePartyGold(180)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(240)~ + ~Here's the money.~ DO ~TakePartyGold(240)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(300)~ + ~Here's the money.~ DO ~TakePartyGold(300)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(360)~ + ~Here's the money.~ DO ~TakePartyGold(360)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(60)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(120)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(180)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(240)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(300)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(360)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay70
~That'll be 70 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(70)~ + ~Here's the money.~ DO ~TakePartyGold(70)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(140)~ + ~Here's the money.~ DO ~TakePartyGold(140)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(210)~ + ~Here's the money.~ DO ~TakePartyGold(210)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(280)~ + ~Here's the money.~ DO ~TakePartyGold(280)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(350)~ + ~Here's the money.~ DO ~TakePartyGold(350)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(420)~ + ~Here's the money.~ DO ~TakePartyGold(420)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(70)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(140)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(210)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(280)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(350)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(420)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay80
~That'll be 80 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(80)~ + ~Here's the money.~ DO ~TakePartyGold(80)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(160)~ + ~Here's the money.~ DO ~TakePartyGold(160)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(240)~ + ~Here's the money.~ DO ~TakePartyGold(240)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(320)~ + ~Here's the money.~ DO ~TakePartyGold(320)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(400)~ + ~Here's the money.~ DO ~TakePartyGold(400)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(480)~ + ~Here's the money.~ DO ~TakePartyGold(480)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(80)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(160)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(240)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(320)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(400)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(480)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay90
~That'll be 90 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(90)~ + ~Here's the money.~ DO ~TakePartyGold(90)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(180)~ + ~Here's the money.~ DO ~TakePartyGold(180)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(270)~ + ~Here's the money.~ DO ~TakePartyGold(270)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(360)~ + ~Here's the money.~ DO ~TakePartyGold(360)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(450)~ + ~Here's the money.~ DO ~TakePartyGold(450)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(540)~ + ~Here's the money.~ DO ~TakePartyGold(540)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(90)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(180)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(270)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(360)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(450)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(540)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay100
~That'll be 100 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(100)~ + ~Here's the money.~ DO ~TakePartyGold(100)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(200)~ + ~Here's the money.~ DO ~TakePartyGold(200)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(300)~ + ~Here's the money.~ DO ~TakePartyGold(300)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(400)~ + ~Here's the money.~ DO ~TakePartyGold(400)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(500)~ + ~Here's the money.~ DO ~TakePartyGold(500)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(600)~ + ~Here's the money.~ DO ~TakePartyGold(600)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(100)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(200)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(300)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(400)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(500)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(600)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay120
~That'll be 120 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(120)~ + ~Here's the money.~ DO ~TakePartyGold(120)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(240)~ + ~Here's the money.~ DO ~TakePartyGold(240)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(360)~ + ~Here's the money.~ DO ~TakePartyGold(360)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(480)~ + ~Here's the money.~ DO ~TakePartyGold(480)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(600)~ + ~Here's the money.~ DO ~TakePartyGold(600)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(720)~ + ~Here's the money.~ DO ~TakePartyGold(720)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(120)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(240)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(360)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(480)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(600)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(720)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay140
~That'll be 140 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(140)~ + ~Here's the money.~ DO ~TakePartyGold(140)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(280)~ + ~Here's the money.~ DO ~TakePartyGold(280)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(420)~ + ~Here's the money.~ DO ~TakePartyGold(420)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(560)~ + ~Here's the money.~ DO ~TakePartyGold(560)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(700)~ + ~Here's the money.~ DO ~TakePartyGold(700)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(840)~ + ~Here's the money.~ DO ~TakePartyGold(840)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(140)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(280)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(420)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(560)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(700)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(840)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay150
~That'll be 150 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(150)~ + ~Here's the money.~ DO ~TakePartyGold(150)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(300)~ + ~Here's the money.~ DO ~TakePartyGold(300)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(450)~ + ~Here's the money.~ DO ~TakePartyGold(450)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(600)~ + ~Here's the money.~ DO ~TakePartyGold(600)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(750)~ + ~Here's the money.~ DO ~TakePartyGold(750)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(900)~ + ~Here's the money.~ DO ~TakePartyGold(900)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(150)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(300)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(450)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(600)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(750)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(900)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay160
~That'll be 160 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(160)~ + ~Here's the money.~ DO ~TakePartyGold(160)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(320)~ + ~Here's the money.~ DO ~TakePartyGold(320)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(480)~ + ~Here's the money.~ DO ~TakePartyGold(480)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(640)~ + ~Here's the money.~ DO ~TakePartyGold(640)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(800)~ + ~Here's the money.~ DO ~TakePartyGold(800)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(960)~ + ~Here's the money.~ DO ~TakePartyGold(960)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(160)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(320)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(480)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(640)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(800)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(960)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay180
~That'll be 180 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(180)~ + ~Here's the money.~ DO ~TakePartyGold(180)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(360)~ + ~Here's the money.~ DO ~TakePartyGold(360)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(540)~ + ~Here's the money.~ DO ~TakePartyGold(540)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(720)~ + ~Here's the money.~ DO ~TakePartyGold(720)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(900)~ + ~Here's the money.~ DO ~TakePartyGold(900)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(1080)~ + ~Here's the money.~ DO ~TakePartyGold(1080)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(180)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(360)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(540)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(720)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(900)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(1080)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay200
~That'll be 200 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(200)~ + ~Here's the money.~ DO ~TakePartyGold(200)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(400)~ + ~Here's the money.~ DO ~TakePartyGold(400)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(600)~ + ~Here's the money.~ DO ~TakePartyGold(600)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(800)~ + ~Here's the money.~ DO ~TakePartyGold(800)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(1000)~ + ~Here's the money.~ DO ~TakePartyGold(1000)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(1200)~ + ~Here's the money.~ DO ~TakePartyGold(1200)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(200)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(400)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(600)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(800)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(1000)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(1200)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay240
~That'll be 240 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(240)~ + ~Here's the money.~ DO ~TakePartyGold(240)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(480)~ + ~Here's the money.~ DO ~TakePartyGold(480)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(720)~ + ~Here's the money.~ DO ~TakePartyGold(720)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(960)~ + ~Here's the money.~ DO ~TakePartyGold(960)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(1200)~ + ~Here's the money.~ DO ~TakePartyGold(1200)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(1440)~ + ~Here's the money.~ DO ~TakePartyGold(1440)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(240)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(480)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(720)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(960)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(1440)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(1440)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay280
~That'll be 280 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(280)~ + ~Here's the money.~ DO ~TakePartyGold(280)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(560)~ + ~Here's the money.~ DO ~TakePartyGold(560)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(840)~ + ~Here's the money.~ DO ~TakePartyGold(840)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(1120)~ + ~Here's the money.~ DO ~TakePartyGold(1120)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(1400)~ + ~Here's the money.~ DO ~TakePartyGold(1400)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(1680)~ + ~Here's the money.~ DO ~TakePartyGold(1680)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(280)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(560)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(840)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(1120)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(1400)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(1680)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay320
~That'll be 320 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(320)~ + ~Here's the money.~ DO ~TakePartyGold(320)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(640)~ + ~Here's the money.~ DO ~TakePartyGold(640)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(960)~ + ~Here's the money.~ DO ~TakePartyGold(960)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(1280)~ + ~Here's the money.~ DO ~TakePartyGold(1280)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(1400)~ + ~Here's the money.~ DO ~TakePartyGold(1400)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(1720)~ + ~Here's the money.~ DO ~TakePartyGold(1720)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(320)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(640)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(9600)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(1280)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(1400)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(1720)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay360
~That'll be 360 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(360)~ + ~Here's the money.~ DO ~TakePartyGold(360)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(720)~ + ~Here's the money.~ DO ~TakePartyGold(720)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(1080)~ + ~Here's the money.~ DO ~TakePartyGold(1080)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(1440)~ + ~Here's the money.~ DO ~TakePartyGold(1440)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(1800)~ + ~Here's the money.~ DO ~TakePartyGold(1800)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(2160)~ + ~Here's the money.~ DO ~TakePartyGold(2160)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(360)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(720)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(1080)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(1440)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(1800)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(2160)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.pay480
~That'll be 480 gold per head.~
END
  + ~NumInParty(1) PartyGoldGT(480)~ + ~Here's the money.~ DO ~TakePartyGold(360)~ + caravan.takeoff
  + ~NumInParty(2) PartyGoldGT(960)~ + ~Here's the money.~ DO ~TakePartyGold(720)~ + caravan.takeoff
  + ~NumInParty(3) PartyGoldGT(1440)~ + ~Here's the money.~ DO ~TakePartyGold(1080)~ + caravan.takeoff
  + ~NumInParty(4) PartyGoldGT(1920)~ + ~Here's the money.~ DO ~TakePartyGold(1440)~ + caravan.takeoff
  + ~NumInParty(5) PartyGoldGT(2400)~ + ~Here's the money.~ DO ~TakePartyGold(1800)~ + caravan.takeoff
  + ~NumInParty(6) PartyGoldGT(2880)~ + ~Here's the money.~ DO ~TakePartyGold(2160)~ + caravan.takeoff
  + ~NumInParty(1) !PartyGoldGT(360)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(2) !PartyGoldGT(720)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(3) !PartyGoldGT(1080)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(4) !PartyGoldGT(1440)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(5) !PartyGoldGT(1800)~ + ~I don't have enough gold.~ + caravan.notenough
  + ~NumInParty(6) !PartyGoldGT(2160)~ + ~I don't have enough gold.~ + caravan.notenough
  ++ ~I've changed my mind.~ + caravan.no

CHAIN C0CAR#01 caravan.takeoff
~Hop on the carriage and we'll be on our way.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("C0CAR#SC",TRUE)~ EXIT

CHAIN C0CAR#01 caravan.notenough
~I can't take people for free, come back when you've gathered enough gold.~
DO ~SetGlobal("C0CaravanTravelTime","GLOBAL",0)
SetGlobal("C0CaravanDestination","GLOBAL",0)~ EXIT

CHAIN C0CAR#01 caravan.no
~Come back any time you need to travel places.~
DO ~SetGlobal("C0CaravanTravelTime","GLOBAL",0)
SetGlobal("C0CaravanDestination","GLOBAL",0)~ EXIT
