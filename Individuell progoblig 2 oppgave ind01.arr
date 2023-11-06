use context essentials2021


# Her inkluderes funksjonen for å hente tabeller fra google sheets

include gdrive-sheets



# Her defineres ssid, tabellen med dimensjonene og fargene til flaggene lastes in til et leselig format av pyret

ssid = "1AB1wkI71nssw8lP7jHQASnalQDbdbusNoXJZMw7yY_0"
flags-table =
  load-table: nation,	width,	height,	cross-width-1,	cross-width-2,	horizontal-align,	color-background,	color-cross-1,	color-cross-2
    source: load-spreadsheet(ssid).sheet-by-name("Flaggs", true)
  end


# Her lages alle de nordiske flaggene med informasjon hentet fra tabellen. .row()[] funksjonen brukes for å hente informasjon fra et spesifikt punkt i tabellen også bruke det på det rette stedet.


#norway defenitions
norway-flag = overlay-xy(
  rectangle(
    flags-table.row-n(0)["cross-width-2"],
        flags-table.row-n(0)["height"],
          "solid",
    flags-table.row-n(0)["color-cross-2"]),
  -70, 0,
  overlay-align("middle", "middle", rectangle(
      flags-table.row-n(0)["width"],
      flags-table.row-n(0)["cross-width-2"],
          "solid",
      flags-table.row-n(0)["color-cross-2"]),
    overlay-xy(
      rectangle(
        flags-table.row-n(0)["cross-width-1"],
        flags-table.row-n(0)["height"],
          "solid",
        flags-table.row-n(0)["color-cross-1"]),
      flags-table.row-n(0)["horizontal-align"], 0,
      overlay-align("middle", "middle", 
          rectangle(
          flags-table.row-n(0)["width"],
          flags-table.row-n(0)["cross-width-1"],
          "solid",
          flags-table.row-n(0)["color-cross-1"]),
        rectangle(
          flags-table.row-n(0)["width"],
          flags-table.row-n(0)["height"],
          "solid",
          flags-table.row-n(0)["color-background"]
          )))))

#Denmark flag defenition

denmark-flag = overlay-xy(
  rectangle(
    flags-table.row-n(1)["cross-width-2"],
    flags-table.row-n(1)["height"],
          "solid",
    flags-table.row-n(1)["color-cross-2"]),
  -70, 0,
  overlay-align("middle", "middle", rectangle(
      flags-table.row-n(1)["width"],
      flags-table.row-n(1)["cross-width-2"],
          "solid",
      flags-table.row-n(1)["color-cross-2"]),
    overlay-xy(
      rectangle(
        flags-table.row-n(1)["cross-width-1"],
        flags-table.row-n(1)["height"],
          "solid",
        flags-table.row-n(1)["color-cross-1"]),
      flags-table.row-n(1)["horizontal-align"], 0,
      overlay-align("middle", "middle", 
          rectangle(
          flags-table.row-n(1)["width"],
          flags-table.row-n(1)["cross-width-1"],
          "solid",
          flags-table.row-n(1)["color-cross-1"]),
        rectangle(
          flags-table.row-n(1)["width"],
          flags-table.row-n(1)["height"],
          "solid",
          flags-table.row-n(1)["color-background"]
          
          )))))

#sweden flag defenition

sweden-flag = overlay-xy(
  rectangle(
    flags-table.row-n(2)["cross-width-2"],
    flags-table.row-n(2)["height"],
          "solid",
    flags-table.row-n(2)["color-cross-2"]),
  -70, 0,
  overlay-align("middle", "middle", rectangle(
      flags-table.row-n(2)["width"],
      flags-table.row-n(2)["cross-width-2"],
          "solid",
      flags-table.row-n(2)["color-cross-2"]),
    overlay-xy(
      rectangle(
        flags-table.row-n(2)["cross-width-1"],
        flags-table.row-n(2)["height"],
          "solid",
        flags-table.row-n(2)["color-cross-1"]),
      flags-table.row-n(2)["horizontal-align"], 0,
      overlay-align("middle", "middle", 
          rectangle(
          flags-table.row-n(2)["width"],
          flags-table.row-n(2)["cross-width-1"],
          "solid",
          flags-table.row-n(2)["color-cross-1"]),
        rectangle(
          flags-table.row-n(2)["width"],
          flags-table.row-n(2)["height"],
          "solid",
          flags-table.row-n(2)["color-background"]
          
          )))))

#Finnland flag defenition

finnland-flag = overlay-xy(
  rectangle(
    flags-table.row-n(3)["cross-width-2"],
    flags-table.row-n(3)["height"],
          "solid",
    flags-table.row-n(3)["color-cross-2"]),
  -70, 0,
  overlay-align("middle", "middle", rectangle(
      flags-table.row-n(3)["width"],
      flags-table.row-n(3)["cross-width-2"],
          "solid",
      flags-table.row-n(3)["color-cross-2"]),
    overlay-xy(
      rectangle(
        flags-table.row-n(3)["cross-width-1"],
        flags-table.row-n(3)["height"],
          "solid",
        flags-table.row-n(3)["color-cross-1"]),
      flags-table.row-n(3)["horizontal-align"], 0,
      overlay-align("middle", "middle", 
          rectangle(
          flags-table.row-n(3)["width"],
          flags-table.row-n(3)["cross-width-1"],
          "solid",
          flags-table.row-n(3)["color-cross-1"]),
        rectangle(
          flags-table.row-n(3)["width"],
          flags-table.row-n(3)["height"],
          "solid",
          flags-table.row-n(3)["color-background"]
          
          )))))

#Iceland flag defenition

iceland-flag = overlay-xy(
  rectangle(
    flags-table.row-n(4)["cross-width-2"],
    flags-table.row-n(4)["height"],
          "solid",
    flags-table.row-n(4)["color-cross-2"]),
  -80, 0,
  overlay-align("middle", "middle", rectangle(
      flags-table.row-n(4)["width"],
      flags-table.row-n(4)["cross-width-2"],
          "solid",
      flags-table.row-n(4)["color-cross-2"]),
    overlay-xy(
      rectangle(
        flags-table.row-n(4)["cross-width-1"],
        flags-table.row-n(4)["height"],
          "solid",
        flags-table.row-n(4)["color-cross-1"]),
      flags-table.row-n(4)["horizontal-align"], 0,
      overlay-align("middle", "middle", 
          rectangle(
          flags-table.row-n(4)["width"],
          flags-table.row-n(4)["cross-width-1"],
          "solid",
          flags-table.row-n(4)["color-cross-1"]),
        rectangle(
          flags-table.row-n(4)["width"],
          flags-table.row-n(4)["height"],
          "solid",
          flags-table.row-n(4)["color-background"]
          
          )))))

#Farow icelands flag defenition

faroe-flag = overlay-xy(
  rectangle(
    flags-table.row-n(5)["cross-width-2"],
    flags-table.row-n(5)["height"],
          "solid",
    flags-table.row-n(5)["color-cross-2"]),
  -70, 0,
  overlay-align("middle", "middle", rectangle(
      flags-table.row-n(5)["width"],
      flags-table.row-n(5)["cross-width-2"],
          "solid",
      flags-table.row-n(5)["color-cross-2"]),
    overlay-xy(
      rectangle(
        flags-table.row-n(5)["cross-width-1"],
        flags-table.row-n(5)["height"],
          "solid",
        flags-table.row-n(5)["color-cross-1"]),
      flags-table.row-n(5)["horizontal-align"], 0,
      overlay-align("middle", "middle", 
          rectangle(
          flags-table.row-n(5)["width"],
          flags-table.row-n(5)["cross-width-1"],
          "solid",
          flags-table.row-n(5)["color-cross-1"]),
        rectangle(
          flags-table.row-n(5)["width"],
          flags-table.row-n(5)["height"],
          "solid",
          flags-table.row-n(5)["color-background"]
          
          )))))


#her er funksjonen som henter hvert flagg 



fun flag(country :: String) -> Image:
  doc: "funksjonen kaller på flag Image"
  if country == "norway":
    norway-flag
  else if country == "denmark":
    denmark-flag
  else if country == "sweden":
    sweden-flag
  else if country == "finnland":
    finnland-flag
  else if country == "iceland":
    iceland-flag
  else if country == "faroe":
    faroe-flag
  else:
    "no flag"
  end
end

