//
//  main.swift
//  Reservation
//
//  Created by Afnan Abdullah on 22/05/1443 AH.
//

import Foundation
var ListReservation :[ReservationInfo] = []
var Books = initialBook ()
print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
print("     Hi 😃❤️ , Wellcom to the My Book Program 📚       ")
libraryMenu ()

// Creat Class of Book
class Book {
    
    //Book Information
    var Id :Int
    var BookName :String
    var Auther :String
    var Price :String
    var Quntity :Int
    var categoryBook :String
    var rateBook :Double
    
    init(Id :Int,BookName :String, Auther :String,Price :String ,Quntity :Int,categoryBook :String ,rateBook :Double ){
        self.Id = Id
        self.BookName = BookName
        self.Auther = Auther
        self.Price = Price
        self.Quntity = Quntity
        self.categoryBook = categoryBook
        self.rateBook = rateBook
        
    }
}

class ReservationInfo {
    let Today : Date
    let ExpiryDate :Date
    let UserName :String
    let UserEmail :String
    let BooKId : Int
    init(Today : Date,ExpiryDate :Date, UserName :String , UserEmail :String , BooKId : Int){
        self.Today = Today
        self.ExpiryDate = ExpiryDate
        self.UserName = UserName
        self.UserEmail = UserEmail
        self.BooKId = BooKId
    }
}

// initial Book
func initialBook () -> [Book]{
    var Books: [Book] = []
    let book1 = Book (Id: 1 ,BookName :"Outliers - The Story of Success",Auther:"Malcolm Gladwell",Price:"SR 61" , Quntity:4 ,categoryBook:"Self Development", rateBook: 5)
    let book2 = Book (Id: 2 ,BookName :"The Secret",Auther:"Rhonda Byrne",Price:"SR 115" , Quntity:10 ,categoryBook:"Self Development", rateBook: 4.5)
    let book3 = Book (Id: 3 ,BookName :"What I Know for Sure",Auther:"Oprah Winfrey",Price:"SR 95" , Quntity:10 ,categoryBook:"Self Development", rateBook: 3.1)
    let book4 = Book (Id: 4 ,BookName :"Rich Dad Poor Dad",Auther:"Robert Kiyosaki",Price:"SR 45" , Quntity:4 ,categoryBook:"Business & Management", rateBook: 5)
    let book5 = Book (Id: 5 ,BookName :"How to Start a Business without Any Money",Auther:"Rachel Bridge",Price:"SR 75" , Quntity:4 ,categoryBook:"Business & Management", rateBook: 3)
    let book6 = Book (Id: 6 ,BookName :"The Leadership Skills Handbook",Auther:"Jo Owen",Price:"SR 89" , Quntity:1 ,categoryBook:"Business & Management", rateBook: 4.3)
    let book7 = Book (Id: 7 ,BookName :"Garlic - Natures Super Healer",Auther:"Joan Wilen",Price:"SR 40.25" , Quntity:20 ,categoryBook:"Health, Fitness & Dieting", rateBook: 3)
    let book8 = Book (Id: 8 ,BookName :"Headache Relief",Auther:"Alan Rapoport",Price:"SR 10" , Quntity:9 ,categoryBook:"Health, Fitness & Dieting", rateBook: 3.3)
    let book9 = Book (Id: 9 ,BookName :"Never Be Sick Again",Auther:"Raymond Francis",Price:"SR 61" , Quntity:3 ,categoryBook:"Health, Fitness & Dieting", rateBook: 5)
    let book10 = Book (Id: 10 ,BookName :"Not a Happy Family - A Novel",Auther:"Shari Lapena",Price:"SR 89.59" , Quntity:15 ,categoryBook:"Fiction & Literature", rateBook: 3.5)
    let book11 = Book (Id: 11 ,BookName :"The Paper Palace - A Novel",Auther:"Miranda Cowley Heller",Price:"SR 79" , Quntity:8 ,categoryBook:"Fiction & Literature", rateBook: 2)
    let book12 = Book (Id: 12 ,BookName :"The Wheel of Time: The Eye of The World",Auther:"Robert Jordan",Price:"SR 59" , Quntity:2 ,categoryBook:"Fiction & Literature", rateBook: 3.8)
    let book13 = Book (Id: 13 ,BookName :"One Piece",Auther:"Eiichiro Oda",Price:"SR 89" , Quntity:11 ,categoryBook:"Manga Comics", rateBook: 5)
    let book14 = Book (Id: 14 ,BookName :"SwiftUI",Auther:"Chris Barker",Price:"SR 200" , Quntity:9 ,categoryBook:"Computer & Technology" , rateBook: 5)
    
    Books = [book1,book2,book3,book4,book5,book6,book7,book8,book9,book10,book11,book12,book13,book14]
    return Books
    
}

// Print Service of Library
func libraryMenu () {
    // Menw
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - - - - - - - - - Our Service - - - - - - - - - - -")
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("""
    1. See all Books in Library
    2. Search books
    3. Most Popular Books in Library
    4. Display all books you've reserved
    5. Exit
    """)
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print ("Please Enter your choice : ")
    let UserChoice = readLine()
    if let UserChoice = UserChoice {
        let UserChoisAsint = Int (UserChoice)!
        
        switch UserChoisAsint {
        case 1:
            allBooks ()
            break
        case 2: SearchBook ()
            break
        case 3: MostPopular()
            break
        case 4:
            PrintResevedBook ()
            break
        case 5:
            ExiteSystem ()
            break
        default :
            print("Invalid Entry ❌.. Please try again")
            libraryMenu ()
            
        }
    }
}

// Print all Books
func allBooks () {
   
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("""
              Choose a book category :
              
              1. Self Development
              2. Business & Management
              3. Health, Fitness & Dieting
              4. Fiction & Literature
              5. Manga Comics
              6. Computer & Technology
              7. Return to previous menu
              """)
    
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print ("Please enter your choice : ")
    
    let bookChoice = readLine()
    if let bookChoice = bookChoice {
        let userBookAsint = Int (bookChoice)!
        
        switch userBookAsint {
            
        case 1:
            SelfDevelopment()
            break
            // Business & Management Books
        case 2:
            BusinessManagement()
            break
            
            //Health, Fitness & Dieting Book
        case 3:
            HealthFitnessDieting ()
            break
            
            //Fiction & Literature Book
        case 4:
            FictionLiterature ()
            break
            
            //Other Categories in Books
        case 5 :
            MangaComics()
            break
            // back
        case 6:
            ComputerTechnology ()
            break
            
            // Exit
        case 7 :
            libraryMenu ()
            break
            
            // Invalide
        default:
            print("The number you entered is incorrect ❌.. Please try again")
            allBooks ()
        }
        
    }
    
}



// Print massage Exit System
func ExiteSystem (){
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - - - - -Exit of System- - - - - - - -")
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("Thank you For visiting ❤️ ... See you Later 😃🤚🏻")
    
}

func MostPopular(){
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("\n Most Popular Books in Library : \n")
    var num = 1
    for index in 0...13 {
        if Books[index].rateBook >= 4
        {
            print("""
                   ------------------BooK \(num)-------------------
                   
                   Book Titel : \(Books[index].BookName)
                   Author Name : \(Books[index].Auther)
                   Book Id : \(Books[index].Id)
                   Price : \(Books[index].Price)
                   Quntity : \(Books[index].Quntity)
                   Book Rate : \(Books[index].rateBook) Out of 5
                   
                   """)
            num = num + 1
            
        }
    }
    if let UserReturn = readLine(){
        switch UserReturn.uppercased() {
        case "Y" :
           libraryMenu()
            break
        case "N":
            MostPopular()
            break
        default :
            print("Invalid Entry ❌.. Please try again")
            MostPopular()
            break
        }
    }
}

func SearchBook () {
    var check = true
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - - - - - -Search Book- - - - - - - - -")
    repeat{
        print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
        print("Enter the Book Title  Or  Enter D (D:Done) When you Finish :")
        if let UserBookTitle :String = readLine(){
            if (UserBookTitle.uppercased() == "D"){
                check = false
                print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
                if let UserReturn = readLine(){
                    switch UserReturn.uppercased() {
                    case "Y" :
                        libraryMenu ()
                        break
                    case "N":
                        SearchBook ()
                        break
                    default :
                        print("Invalid Entry ❌.. Please try again")
                        SearchBook ()
                        break
                    }
                }
            }
            else {
                var checkbook = true
                var index = 0
                
                while(index < Books.count) {
                    let userbook = Books[index].BookName
                    if (UserBookTitle.lowercased()==userbook.lowercased())
                    {
                        print("""
                                   
                                   Book Titel : \(Books[index].BookName)
                                   Author Name : \(Books[index].Auther)
                                   Book Id : \(Books[index].Id)
                                   Price : \(Books[index].Price)
                                   Quntity : \(Books[index].Quntity)
                                   Book Rate : \(Books[index].rateBook) Out of 5
                                   """)
                        checkbook = true
                        print("\n🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
                        print("Would you like to reserve this book? Y Or N (Y:Yes , N:No)")
                        if let userReserve = readLine()
                        {
                            switch userReserve.uppercased() {
                            case "Y":
                                ReserveProcess()
                                break
                            case "N":
                                print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
                                if let UserReturn = readLine(){
                                    switch UserReturn.uppercased() {
                                    case "Y" :
                                       libraryMenu()
                                        break
                                    case "N":
                                        SearchBook ()
                                        break
                                    default :
                                        print("Invalid Entry ❌.. Please try again")
                                        SearchBook ()
                                        break
                                    }
                                }
                                break
                            default:
                                print("Invalid Entry ❌.. Please try again")
                                SearchBook ()
                            }
                        }
                        break
                    } else{
                        
                        checkbook = false
                    }
                    index = index + 1
                }
                if checkbook == false {
                    print("Sorry 💔...The Book is Not available in Library")
                }
            }
        }
    }while check
    //    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    //    print("\n Enter the Book Title : \n")
    //    if var UserBookTitle :String = readLine()
    //        {
    //        print(UserBookTitle)
    //    for index in 0...13 {
    //        if (Books[index].BookName).lowercased() == UserBookTitle.lowercased()
    //        {
    //            print("""
    //                   Book Titel : \(Books[index].BookName)
    //                   Author Name : \(Books[index].Auther)
    //                   Book Id : \(Books[index].Id)
    //                   Price : \(Books[index].Price)
    //                   Quntity : \(Books[index].Quntity)
    //                   Book Rate : \(Books[index].rateBook) Out of 5
    //
    //                   """)
    //
    //
    //        } else{
    //            print("Sorry...The Book is Not available in Library")
    //            break
    //        }
    //    }
    //    }
    //    print("\n If you want to ")
}

func PrintResevedBook (){
    print("Please enter your Email:")
    let userEmail1 = readLine()!
    var index = 0
    var check1 = true
    while (index < ListReservation.count){
        if (userEmail1 == ListReservation[index].UserEmail){
            
                print("""
                      - - - - -  Reservation information- - - - - - -
                      Book Id : \(ListReservation[index].BooKId)
                      Date : \(ListReservation[index].Today)
                      Book reservation ends in : \(ListReservation[index].ExpiryDate)
                      """)
            check1 = false
        } else {
            
        }
     index = index + 1
    }
        if check1 == true {
            print("You do not have any books reserved")
            print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
            if let UserReturn = readLine(){
                switch UserReturn.uppercased() {
                case "Y" :
                    libraryMenu ()
                    break
                case "N":
                    PrintResevedBook ()
                    break
                default :
                    print("Invalid Entry ❌.. Please try again")
                    PrintResevedBook ()
                    break
                }
            }
        }

}

func ReserveProcess(){
print("Enter your Username ?")
let username = readLine()!
print("Enter your Email ?")
let userEmail = readLine()!
print("Enter the Id Of Book ?")
let userBook = readLine()!
let userBookInt = Int(userBook)!
let today = Date()
let modifiedDate = Calendar.current.date(byAdding: .day, value: +3, to: today)!
let User1 = ReservationInfo(Today: today, ExpiryDate: modifiedDate ,UserName: username , UserEmail: userEmail , BooKId:userBookInt)
 ListReservation.append(User1)
    var index = 0
    while (index < Books.count){
        if (userBookInt == Books[index].Id){
            print("\nReserved successfully 👍🏻 ")
        print("""
              - - - - -  Reservation information- - - - - - -
              User Name : \(username)
              Email : \(userEmail)
              Book Title : \(Books[index].BookName)
              Author Name : \(Books[index].Auther)
              Date : \(today)
              Book reservation ends in : \(modifiedDate)
              - - - - - - - - - - - - - - - - - - - - - - - -
              """)
        }
        index = index + 1
    }
}



// //  Book Category
func SelfDevelopment() {
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - - - - - - -Self Development Books- - - - - - - - -")
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    var num = 1
    for index in 0...13 {
        if Books[index].categoryBook == "Self Development"
        {
            print("""
                   - - - - - - - - - - - -BooK \(num)- - - - - - - - - - -
                   
                   Book Titel : \(Books[index].BookName)
                   Author Name : \(Books[index].Auther)
                   Book Id : \(Books[index].Id)
                   Price : \(Books[index].Price)
                   Quntity : \(Books[index].Quntity)
                   Book Rate : \(Books[index].rateBook) Out of 5
                   """)
            num = num + 1
            
        }
    }
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("Would you like to reserve book? Y Or N (Y:Yes , N:No)")
    if let userReserve = readLine()
    {
        switch userReserve.uppercased() {
        case "Y":
            ReserveProcess ()
            break
        case "N":
                print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
                if let UserReturn = readLine(){
                    switch UserReturn.uppercased() {
                    case "Y" :
                        allBooks()
                        break
                    case "N":
                        ExiteSystem ()
                        break
                    default :
                        print("Invalid Entry ❌.. Please try again")
                        SelfDevelopment()
                        break
                    }
                }
            break
        default:
            print("Invalid Entry ❌.. Please try again")
            SelfDevelopment()
        }
        print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
        if let UserReturn = readLine(){
            switch UserReturn.uppercased() {
            case "Y" :
                allBooks()
                break
            case "N":
                ExiteSystem ()
                break
            default :
                print("Invalid Entry ❌.. Please try again")
                SelfDevelopment()
                break
            }
        }
    }
}
func BusinessManagement(){
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - - - - -Business & Management Books- - - - - - - -")
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")

    var num = 1
    for index in 0...13 {
        if Books[index].categoryBook == "Business & Management"
        {
            print("""
                    
                    - - - - - - - - - - - -BooK \(num)- - - - - - - - - - -
                    
                    Book Titel : \(Books[index].BookName)
                    Author Name : \(Books[index].Auther)
                    Book Id : \(Books[index].Id)
                    Price : \(Books[index].Price)
                    Quntity : \(Books[index].Quntity)
                    Book Rate : \(Books[index].rateBook) Out of 5
                    """)
            num = num + 1
            
        }
    }
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("Would you like to reserve book? Y Or N (Y:Yes , N:No)")
    if let userReserve = readLine()
    {
        switch userReserve.uppercased() {
        case "Y":
            ReserveProcess ()
            break
        case "N":
                print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
                if let UserReturn = readLine(){
                    switch UserReturn.uppercased() {
                    case "Y" :
                        allBooks()
                        break
                    case "N":
                        ExiteSystem ()
                        break
                    default :
                        print("Invalid Entry ❌.. Please try again")
                        BusinessManagement()
                        break
                    }
                }
            break
        default:
            print("Invalid Entry ❌.. Please try again")
            BusinessManagement()
        }
        print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
        if let UserReturn = readLine(){
            switch UserReturn.uppercased() {
            case "Y" :
                allBooks()
                break
            case "N":
                ExiteSystem ()
                break
            default :
                print("Invalid Entry ❌.. Please try again")
                BusinessManagement()
                break
            }
        }
    }
}
func HealthFitnessDieting () {
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - -- -Health & Fitness & Dieting Books- - - - -  - -")
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")

    var num = 1
    for index in 0...13 {
        if Books[index].categoryBook == "Health, Fitness & Dieting"
        {
            print("""
                   
                   - - - - - - - - - - - -BooK \(num)- - - - - - - - - - -
                   
                   Book Titel : \(Books[index].BookName)
                   Author Name : \(Books[index].Auther)
                   Book Id : \(Books[index].Id)
                   Price : \(Books[index].Price)
                   Quntity : \(Books[index].Quntity)
                   Book Rate : \(Books[index].rateBook) Out of 5
                   """)
            num = num + 1
            
        }
    }
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("Would you like to reserve book? Y Or N (Y:Yes , N:No)")
    if let userReserve = readLine()
    {
        switch userReserve.uppercased() {
        case "Y":
            ReserveProcess ()
            break
        case "N":
                print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
                if let UserReturn = readLine(){
                    switch UserReturn.uppercased() {
                    case "Y" :
                        allBooks()
                        break
                    case "N":
                        ExiteSystem ()
                        break
                    default :
                        print("Invalid Entry ❌.. Please try again")
                        HealthFitnessDieting ()
                        break
                    }
                }
            break
        default:
            print("Invalid Entry ❌.. Please try again")
            HealthFitnessDieting ()
        }
        print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
        if let UserReturn = readLine(){
            switch UserReturn.uppercased() {
            case "Y" :
                allBooks()
                break
            case "N":
                ExiteSystem ()
                break
            default :
                print("Invalid Entry ❌.. Please try again")
                HealthFitnessDieting ()
                break
            }
        }
    }
}
func FictionLiterature (){
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - - - -  - -- -Fiction & Literature- - - - - - -  -")
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")

    var num = 1
    for index in 0...13 {
        if Books[index].categoryBook == "Fiction & Literature"
        {
            print("""
                   
                   - - - - - - - - - - - -BooK \(num)- - - - - - - - - - -

                   Book Titel : \(Books[index].BookName)
                   Author Name : \(Books[index].Auther)
                   Book Id : \(Books[index].Id)
                   Price : \(Books[index].Price)
                   Quntity : \(Books[index].Quntity)
                   Book Rate : \(Books[index].rateBook) Out of 5
                   """)
            num = num + 1
            
        }
    }
    print("- - - - - -- - - - - - - - - - - - - - - - - - - - - - - - -")
    print("Would you like to reserve book? Y Or N (Y:Yes , N:No)")
    if let userReserve = readLine()
    {
        switch userReserve.uppercased() {
        case "Y":
            ReserveProcess ()
            break
        case "N":
                print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
                if let UserReturn = readLine(){
                    switch UserReturn.uppercased() {
                    case "Y" :
                        allBooks()
                        break
                    case "N":
                        ExiteSystem ()
                        break
                    default :
                        print("Invalid Entry ❌.. Please try again")
                        FictionLiterature ()
                        break
                    }
                }
            break
        default:
            print("Invalid Entry ❌.. Please try again")
            FictionLiterature ()
        }
        print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
        if let UserReturn = readLine(){
            switch UserReturn.uppercased() {
            case "Y" :
                allBooks()
                break
            case "N":
                ExiteSystem ()
                break
            default :
                print("Invalid Entry ❌.. Please try again")
                FictionLiterature ()
                break
            }
        }
    }
}
func MangaComics(){
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - - - - - - - - -Manga Comics- - - - - - - - -")
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    var num = 1
    for index in 0...13 {
        if Books[index].categoryBook == "Manga Comics"
        {
            print("""
                   
                   - - - - - - - - - - - -BooK \(num)- - - - - - - - - - -

                   Book Titel : \(Books[index].BookName)
                   Author Name : \(Books[index].Auther)
                   Book Id : \(Books[index].Id)
                   Price : \(Books[index].Price)
                   Quntity : \(Books[index].Quntity)
                   Book Rate : \(Books[index].rateBook) Out of 5
                   """)
            num = num + 1
            
        }
    }
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("Would you like to reserve book? Y Or N (Y:Yes , N:No)")
    if let userReserve = readLine()
    {
        switch userReserve.uppercased() {
        case "Y":
            ReserveProcess ()
            break
        case "N":
                print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
                if let UserReturn = readLine(){
                    switch UserReturn.uppercased() {
                    case "Y" :
                        allBooks()
                        break
                    case "N":
                        ExiteSystem ()
                        break
                    default :
                        print("Invalid Entry ❌.. Please try again")
                        MangaComics()
                        break
                    }
                }
            break
        default:
            print("Invalid Entry ❌.. Please try again")
            MangaComics()
        }
        print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
        if let UserReturn = readLine(){
            switch UserReturn.uppercased() {
            case "Y" :
                allBooks()
                break
            case "N":
                ExiteSystem ()
                break
            default :
                print("Invalid Entry ❌.. Please try again")
                MangaComics()
                break
            }
        }
    }
}
func ComputerTechnology (){
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("- - - - - - - - Computer & Technology- - - - - - - - - -")
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    var num = 1
    for index in 0...13 {
        if Books[index].categoryBook == "Computer & Technology"
        {
            print("""
                   
                   - - - - - - - - - - - -BooK \(num)- - - - - - - - - - -

                   Book Titel : \(Books[index].BookName)
                   Author Name : \(Books[index].Auther)
                   Book Id : \(Books[index].Id)
                   Price : \(Books[index].Price)
                   Quntity : \(Books[index].Quntity)
                   Book Rate : \(Books[index].rateBook) Out of 5
                   """)
            num = num + 1
            
        }
    }
    print("🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰")
    print("Would you like to reserve book? Y Or N (Y:Yes , N:No)")
    if let userReserve = readLine()
    {
        switch userReserve.uppercased() {
        case "Y":
            ReserveProcess ()
            break
        case "N":
                print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
                if let UserReturn = readLine(){
                    switch UserReturn.uppercased() {
                    case "Y" :
                        allBooks()
                        break
                    case "N":
                        ExiteSystem ()
                        break
                    default :
                        print("Invalid Entry ❌.. Please try again")
                        ComputerTechnology ()
                        break
                    }
                }
            break
        default:
            print("Invalid Entry ❌.. Please try again")
            ComputerTechnology ()
        }
        print ("Do you want to raturn to the main page..Enter Y or N (Y:Yas , N:No)")
        if let UserReturn = readLine(){
            switch UserReturn.uppercased() {
            case "Y" :
                allBooks()
                break
            case "N":
                ExiteSystem ()
                break
            default :
                print("Invalid Entry ❌.. Please try again")
                ComputerTechnology ()
                break
            }
        }
    }
}

