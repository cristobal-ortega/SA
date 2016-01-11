val AllLabels = List("DTE","BARRIS","TOTAL","ZEROANYS","UNANY","DOSANYS","TRESANYS","QUATREANYS","CINCANYS” [ ... ],"NOURANTATRESANYS","NOURANTAQUATREANYS","NOURANTACINCANYSIMES")

val lbla = List("VINTANYS","VINTIUNANYS","VINTIDOSANYS","VINTITRESANYS" ,"VINTICUATREANYS" ,"VINTICINCANYS","VINTISISANYS","VINTISETANYS","VINTIVUITANYS","VINTINOUANYS","TRENTAANYS")

val index_lbla = lbla.map(x => AllLabels.indexOf(x))

val dataRDD = sc.textFile("opendata_2014_ine­ine04.csv").map(_.split(";"))

dataRDD.map(x => index_lbla.map(i => x(i).toInt).sum).collect
