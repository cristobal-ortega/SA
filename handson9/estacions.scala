val data = sc.textFile("mapa.txt")
data.foreach(println)

import org.apache.spark.mllib.linalg.Vectors

val parsedData = data.map(s => Vectors.dense(s.split("").map(_.toDouble))).cache()
parsedData.foreach(println)

import org.apache.spark.mllib.clustering.KMeansval
clusters = KMeans.train(parsedData, 3, 10)

val WSSSE = clusters.computeCost(parsedData)

print("Within Set Sum of Squared Error = " + WSSSE)

clusters.clusterCenters
