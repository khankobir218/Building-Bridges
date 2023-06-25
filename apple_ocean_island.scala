import scala.collection.immutable.List

object BuildingBridges {

  // Main function, used to drive the program
  def main(args: Array[String]): Unit = {
    val bridges: List[Bridge] = List(
      Bridge("Brooklyn", 1883, 1318),
      Bridge("Holland", 1883, 1100),
      Bridge("Golden Gate", 1937, 3700),
      Bridge("Williamsburg", 1903, 2400),
      Bridge("Queensboro", 1909, 1080)
    )

    val sortedBridges = bridges.sortWith(_.length > _.length)
    println("Sorting bridges by length:")
    sortedBridges.foreach(println)

    val oldestBridges = bridges.filter(_.year < 1910)
    println("\nList of bridges constructed before 1910:")
    oldestBridges.foreach(println)

    val bridgesByLength = bridges.groupBy(_.length)
    println("\nList of bridges grouped by length:")
    bridgesByLength.foreach { case (length, bs) =>
      println(s"\nBridges with length $length:")
      bs.foreach(println)
    }
  }

  // Case class representing a bridge
  case class Bridge(name: String, year: Int, length: Int)

}