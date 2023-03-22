// 
//  ContentView.swift
//  VanishingMan
//
//  Created by Will Vesevick on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    @State private var currentWord = ""


    @State var firstBox = "box"
    @State var secondBox = "box"
    @State var thirdBox = "box"
    @State var tries = 6

    @State var mhead = "genericHead"
    @State var mbody = "genericBody"
    @State var lleg = "genericLeft"
    @State var rleg = "genericRight"
    @State var larm = "genericLeft"
    @State var rarm = "genericRight"


    @State var box1Value = 22
    @State var box2Value = 22
    @State var box3Value = 22
    
    @State var wordArray = ["TCA", "DOT", "MAT"]
    @State var word = ""
    @State var wrongLetters = [Character]()
    @State var usedLetters = [Character]()
    @State var letter = ""
    
  
    func setBoxValues(){
        @State var word = wordArray.randomElement()!
        @State var letter = Array(word)
        for letter in word {
            if letter == "A" {
                //i want to do...if letter.0 = "A" then box1Value = 1 and so on for all the letters and for each letter position
                box1Value = 1
            } else if letter == "B" {
                box1Value = 2
            }else if letter == "C" {
                box1Value = 3
            }else if letter == "D" {
                box1Value = 4
            }else if letter == "E" {
                box1Value = 5
            }else if letter == "F" {
                box1Value = 6
            }else if letter == "G" {
                box1Value = 7
            }else if letter == "H" {
                box1Value = 8
            }else if letter == "I" {
                box1Value = 9
            }else if letter == "J" {
                box1Value = 10
            }else if letter == "K" {
                box1Value = 11
            }else if letter == "L" {
                box1Value = 12
            }else if letter == "M" {
                box1Value = 13
            }else if letter == "N" {
                box1Value = 14
            }else if letter == "O" {
                box1Value = 15
            }else if letter == "P" {
                box1Value = 16
            }else if letter == "Q" {
                box1Value = 17
            }else if letter == "R" {
                box1Value = 18
            }else if letter == "S" {
                box1Value = 19
            }else if letter == "T" {
                box1Value = 20
            }else if letter == "U" {
                box1Value = 21
            }else if letter == "V" {
                box1Value = 22
            }else if letter == "W" {
                box1Value = 23
            }else if letter == "X" {
                box1Value = 24
            }else if letter == "Y" {
                box1Value = 25
            }else if letter == "Z" {
                box1Value = 26
            }
            
        }
        
//        if word == "CAT" {
//            box1Value = 3
//            box2Value = 1
//            box3Value = 20
//        } else if word == "DOT" {
//            box1Value = 4
//            box2Value = 15
//            box3Value = 20
//        } else if word == "MAT" {
//            box1Value = 13
//            box2Value = 1
//            box3Value = 20
//        }
    }
    
    func triesLeft(){
        if tries == 6 {
            lleg = "blank"
        } else if tries == 5 {
            rleg = "blank"
        } else if tries == 4 {
            larm = "blank"
        } else if tries == 3 {
            rarm = "blank"
        } else if tries == 2 {
            mbody = "blank"
        } else {
            mhead = "blank"
        }
        tries -= 1
    }
    
    /*1*/   @State   var a = "a"
    /*2*/   @State   var b = "b"
    /*3*/   @State   var c = "c"
    /*4*/   @State   var d = "d"
    /*5*/   @State   var e = "e"
    /*6*/   @State   var f = "f"
    /*7*/   @State   var g = "g"
    /*8*/   @State   var h = "h"
    /*9*/   @State   var i = "i"
    /*10*/  @State   var j = "j"
    /*11*/  @State   var k = "k"
    /*12*/  @State   var l = "l"
    /*13*/  @State   var m = "m"
    /*14*/  @State   var n = "n"
    /*15*/  @State   var o = "o"
    /*16*/  @State   var p = "p"
    /*17*/  @State   var q = "q"
    /*18*/  @State   var r = "r"
    /*19*/  @State   var s = "s"
    /*20*/  @State   var t = "t"
    /*21*/  @State   var u = "u"
    /*22*/  @State   var v = "v"
    /*23*/  @State   var w = "w"
    /*24*/  @State   var x = "x"
    /*25*/  @State   var y = "y"
    /*26*/  @State   var z = "z"


    func reset() {
        mhead = "genericHead"
        mbody = "genericBody"
        lleg = "genericLeft"
        rarm = "genericRight"
        larm = "genericLeft"
        rleg = "genericRight"
        tries = 6
        firstBox = "box"
        secondBox = "box"
        thirdBox = "box"
        a = "a"
        b = "b"
        c = "c"
        d = "d"
        e = "e"
        f = "f"
        g = "g"
        h = "h"
        i = "i"
        j = "j"
        k = "k"
        l = "l"
        m = "m"
        n = "n"
        o = "o"
        p = "p"
        q = "q"
        r = "r"
        s = "s"
        t = "t"
        u = "u"
        v = "v"
        w = "w"
        x = "x"
        y = "y"
        z = "z"
        setBoxValues()
    }

    func randomWord() {

    }

//    mutating func newWord() {
//        box1Value = 13
//        box2Value = 15
//        box1Value = 13
//    }

    var body: some View {
        NavigationView {
            NavigationLink("Play!", destination: {
               Text("Coming Soon!")
                VStack {
                    if thirdBox != "box" && secondBox != "box" && firstBox != "box" {
                        Image("poof")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Button(action: {
                            reset()
                        }, label: {
                            Text("Reset")
                                .font(.title)
                        })
                    } else if tries == 0 {
                        Image("wrong")
                        Button(action: {
                            reset()
                        }, label: {
                            Text("Reset")
                                .font(.title)
                        })
                    } else {
                        Text("Vanishing Man")
                            .font(.title)
                    }
                Spacer()
                Image(mhead)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                    HStack {
                        Spacer()
                        Image(larm)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55, height: 55)
                        Image(mbody)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 80)
                        Image(rarm)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55, height: 55)
                        Spacer()
                    }
                    HStack {
                        Image(lleg)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Image(rleg)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)

                    }
                    Spacer()

                    HStack {
                        Image(firstBox)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Image(secondBox)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Image(thirdBox)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    }

                    Spacer()

                    HStack {
                        Text("Tries Left: \(tries)")
                            .font(.title)
                    }
                    VStack {

                    HStack {
                        Button(action: {
                            if box1Value == 1 {
                                firstBox = "a"
                            } else if box2Value == 1 {
                                secondBox = "a"
                            } else if box3Value == 1 {
                                thirdBox = "a"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("a")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                        Button(action: {
                            if box1Value == 2 {
                                firstBox = "b"
                            } else if box2Value == 2 {
                                secondBox = "b"
                            } else if box3Value == 2 {
                                thirdBox = "b"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("b")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                        Button(action: {
                            if box1Value == 3 {
                                firstBox = "c"
                            } else if box2Value == 3 {
                                secondBox = "c"
                            } else if box3Value == 3 {
                                thirdBox = "c"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("c")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                        Button(action: {
                            if box1Value == 4 {
                                firstBox = "d"
                            } else if box2Value == 4 {
                                secondBox = "d"
                            } else if box3Value == 4 {
                                thirdBox = "d"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("d")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                        Button(action: {
                            if box1Value == 5 {
                                firstBox = "e"
                            } else if box2Value == 5 {
                                secondBox = "e"
                            } else if box3Value == 5 {
                                thirdBox = "e"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("e")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                        Button(action: {
                            if box1Value == 6 {
                                firstBox = "f"
                            } else if box2Value == 6 {
                                secondBox = "f"
                            } else if box3Value == 6 {
                                thirdBox = "f"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("f")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                        Button(action: {
                            if box1Value == 7 {
                                firstBox = "g"
                            } else if box2Value == 7 {
                                secondBox = "g"
                            } else if box3Value == 7 {
                                thirdBox = "g"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("g")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                        Button(action: {
                            if box1Value == 8 {
                                firstBox = "h"
                            } else if box2Value == 8 {
                                secondBox = "h"
                            } else if box3Value == 8 {
                                thirdBox = "h"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("h")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                        Button(action: {
                            if box1Value == 9 {
                                firstBox = "i"
                            } else if box2Value == 9 {
                                secondBox = "i"
                            } else if box3Value == 9 {
                                thirdBox = "i"
                            } else {
                                triesLeft()
                            }
                        }, label : {
                            Image("i")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        })
                    }
                        HStack {

                            Button(action: {
                                if box1Value == 10 {
                                    firstBox = "j"
                                } else if box2Value == 10 {
                                    secondBox = "j"
                                } else if box3Value == 10 {
                                    thirdBox = "j"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("j")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 11 {
                                    firstBox = "k"
                                } else if box2Value == 11 {
                                    secondBox = "k"
                                } else if box3Value == 11 {
                                    thirdBox = "k"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("k")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 12 {
                                    firstBox = "l"
                                } else if box2Value == 12 {
                                    secondBox = "l"
                                } else if box3Value == 12 {
                                    thirdBox = "l"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("l")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 13 {
                                    firstBox = "m"
                                } else if box2Value == 13 {
                                    secondBox = "m"
                                } else if box3Value == 13 {
                                    thirdBox = "m"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("m")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 14 {
                                    firstBox = "n"
                                } else if box2Value == 14 {
                                    secondBox = "n"
                                } else if box3Value == 14 {
                                    thirdBox = "n"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("n")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 15 {
                                    firstBox = "o"
                                } else if box2Value == 15 {
                                    secondBox = "o"
                                } else if box3Value == 15 {
                                    thirdBox = "o"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("o")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 16 {
                                    firstBox = "p"
                                } else if box2Value == 16 {
                                    secondBox = "p"
                                } else if box3Value == 16 {
                                    thirdBox = "p"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("p")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 17 {
                                    firstBox = "q"
                                } else if box2Value == 17 {
                                    secondBox = "q"
                                } else if box3Value == 17 {
                                    thirdBox = "q"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("q")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 18 {
                                    firstBox = "r"
                                } else if box2Value == 18 {
                                    secondBox = "r"
                                } else if box3Value == 18 {
                                    thirdBox = "r"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("r")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 19 {
                                    firstBox = "s"
                                } else if box2Value == 19 {
                                    secondBox = "s"
                                } else if box3Value == 19 {
                                    thirdBox = "s"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("s")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                        }
                        HStack {
                            Button(action: {
                                if box1Value == 20 {
                                    firstBox = "t"
                                } else if box2Value == 20 {
                                    secondBox = "t"
                                } else if box3Value == 20 {
                                    thirdBox = "t"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("t")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 21 {
                                    firstBox = "u"
                                } else if box2Value == 21 {
                                    secondBox = "u"
                                } else if box3Value == 21 {
                                    thirdBox = "u"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("u")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 22 {
                                    firstBox = "v"
                                } else if box2Value == 22 {
                                    secondBox = "v"
                                } else if box3Value == 22 {
                                    thirdBox = "v"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("v")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 23 {
                                    firstBox = "w"
                                } else if box2Value == 23 {
                                    secondBox = "w"
                                } else if box3Value == 23 {
                                    thirdBox = "w"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("w")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 24 {
                                    firstBox = "x"
                                } else if box2Value == 24 {
                                    secondBox = "x"
                                } else if box3Value == 24 {
                                    thirdBox = "x"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("x")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 25 {
                                    firstBox = "y"
                                } else if box2Value == 25 {
                                    secondBox = "y"
                                } else if box3Value == 25 {
                                    thirdBox = "y"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("y")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })
                            Button(action: {
                                if box1Value == 26 {
                                    firstBox = "z"
                                } else if box2Value == 26 {
                                    secondBox = "z"
                                } else if box3Value == 26 {
                                    thirdBox = "z"
                                } else {
                                    triesLeft()
                                }
                            }, label : {
                                Image("z")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                            })

                        Spacer()
                        }
                    }
                }.onAppear {
                    self.setBoxValues()
                }
            })
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
