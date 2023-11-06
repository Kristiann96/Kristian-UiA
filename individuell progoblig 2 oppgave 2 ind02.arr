use context essentials2021
include gdrive-sheets #for å laste in tebellen fra sheets
include shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep") #For å laste inn dcic-2021 pakken
include data-source # for å bruke sanitize funksjonen

# oppgave a)


# Her lastes tabellen fra google sheets inn og gis navnet kWh-wealthy-consumer-data

ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

# oppgave b)

# Ved bruk av Option data typen kunne jeg bruke cases til å gjøre om tomt felt til Number 0 og alle udefinerte verdier til Number

fun energy-to-num(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where:
energy-to-num("") is 0
energy-to-num("48") is 48
end

# oppgave c)

# her brukes transform-column funksjonen for å sende hele innholdet i energi kolonnen gjennom funksjonen energy-to-num

fix-energy-column = transform-column(kWh-wealthy-consumer-data, "energi", energy-to-num)

# oppgave d)

# Tallet er hentet fra TV2.no fra 2019
#Kilde: www.tv2.no/broom/gjennomsnittsbilen-brukes-bare-32-prosent-av-tiden/10548724/

km-kjort-per-dag = 38


# En gjennomsnittsbils forbruk varerer stort, men jeg bruker 0.75 l per 1 km
# kilde: www.kjaptforklart.no/hvor-mye-bensin-bruker-en-bil/

km-per-liter-bensin = 0.75

# I følge snl.no er det 9.1 kWt per liter bensin
# Kilde: snl.no/energitetthet

kWt-per-liter-bensin = 9.1

# Her er formelen fra kompendiet som regner ut energi en bil bruker per dag

bil-kWt-per-dag = (km-kjort-per-dag / km-per-liter-bensin) * kWt-per-liter-bensin

bil-table = table: komponent :: String, energi :: Number
  row: "bil", bil-kWt-per-dag
end


# Beste måten jeg fant for å legge til den nye verdien for bilen. hver rad fra fix-energy-column table legges in hver for seg.

legg-til-1 = add-row(bil-table, fix-energy-column.row-n(1)) 
legg-til-2 = add-row(legg-til-1, fix-energy-column.row-n(2)) 
legg-til-3 = add-row(legg-til-2, fix-energy-column.row-n(3)) 
legg-til-4 = add-row(legg-til-3, fix-energy-column.row-n(4)) 
legg-til-5 = add-row(legg-til-4, fix-energy-column.row-n(5)) 
legg-til-6 = add-row(legg-til-5, fix-energy-column.row-n(6)) 
legg-til-7 = add-row(legg-til-6, fix-energy-column.row-n(7)) 
table-med-bilverdi = add-row(legg-til-7, fix-energy-column.row-n(8)) 
  


# Her summeres kolonnen som inneholder alle energi verdiene

sum-av-energi-konsum-per-dag = sum(table-med-bilverdi, "energi")

# oppgave e)

# Her bruker jeg bar-chart funksjonen for å generere en graf av table-med-bilverdi

table-chart = bar-chart(table-med-bilverdi, "komponent", "energi")

# når det kommer til string-to-number funksjonen brukt med cases, var det den eneste funksjonen som løste det. num-sanitizer funsjonen fungerte ikke ave ukjente årsaker.









