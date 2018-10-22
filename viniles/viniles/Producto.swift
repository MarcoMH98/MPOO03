//  Created by Germán Santos Jaimes on 09/20/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import Foundation

struct Producto{
    var nombre: String
    var desc: String
    var precio: Double
    var imagen: String
}
var IndexP = 0

let tB = Producto(nombre: "The Beatles",
                        desc: "Album: Rubber Soul",
                        precio: 2.50,
                        imagen: "thebeatles")
let mJ = Producto(nombre: "Michael Jackson",
                      desc: "Album: Bad",
                      precio: 4.50,
                      imagen: "michaeljackson")
let cM = Producto(nombre: "Control Machete",
                      desc: "Album: Solo para fanaticos",
                      precio: 12.00,
                      imagen: "cmachete")
let tD = Producto(nombre: "The Doors",
                      desc: "Album: The best of the doors",
                      precio: 11.00,
                      imagen: "tdoors")
let lZ = Producto(nombre: "Led Zepellin",
                      desc: "Album: Mothership",
                      precio: 10.50,
                      imagen: "lzep")
let mC = Producto(nombre: "Metallica",
                       desc: "Album: Black Album",
                       precio: 7.00,
                       imagen: "metallica")

var discos = [tB,mJ,cM,tD,lZ,mC]


