void main(){
  var deck = new Deck();
  print(deck);
  deck.printCards();
}

//this is a collection of cards
class Deck{
  //collection of 52 playing cards
  List<Card> cards=[];
  
  Deck() {
    //create 52 cards and assign it to the cards field
    List<String> ranks = ["Ace","Two","Three","Four","Five","Six"];
    List<String> suits = ["Spade","Clubs","Diamonds","Hearts"];
    
    //nested for loop
    
//     for(int i=0; i<suits.length; i++){
      
//       for(int j=0; j<ranks.length; j++){
//         //create a new Card and add it to cards
//         var card = new Card(suits[i], ranks[j]);
//         cards.add(card);  
//       }
     
//     }
    
    
    for(var suit in suits){
      for(var rank in ranks){
        var card = new Card(suit, rank);
        cards.add(card); 
      }
      
    }
    
  }
  
  void printCards() {
    print(cards);
  }
  
  @override
  String toString(){
    return "";
  }
  
}


//individual card
class Card{
  //represents the rank such as Ace, Queen, Jack
  String rank;
  //represents the suit such as Space, Club
  String suit;
  
  Card(this.suit, this.rank);
  
  @override 
  String toString(){
    return "$rank of $suit";
  }
}




void main () {
  var deck = new Deck();
 
//   print(deck);
  
//   deck.printCards();
//   deck.shuffleCards();
  
//   print("\n");
//   deck.printCards();
  
//   var hand = deck.deal(6);
//   print("\n");
//   print(hand);
  
//   print("\n");
//   deck.printCards();
  
  var cards= deck.cardsWithSuit('Diamonds');
  print(cards);
  
}
// this is a collection of cards
class Deck {
  // collection of 52 playing cards
  List<Card> cards = [];
  
  Deck () {
    //create 52 cards and assign it to the cards field
    List<String> ranks = ["Ace", "Two","Three","Four","Five","Six"];
    List<String> suits = ["Spade","Clubs","Hearts","Diamonds"];
    
    // nested for loop
//     for( int i = 0; i< suits.length; i++) {
//       for(int j =0; j< ranks.length; j++ ){
//         //create a new Card and add it to cards
//         var card = new Card(suits[i], ranks[j]);
//         cards.add(card);
        
//       }
//     }
    for(var suit in suits){
      for(var rank in ranks){
        
        var card = new Card(suit,rank);
        cards.add(card);
        
      }
    }
//     for(int i= 0;i<suits.length; i++){
//       var suit = suits[i];
//     }
  }
  
  void printCards() {
    print(cards);
  }
  
  shuffleCards(){
    cards.shuffle();
  }
  
  deal(int size){
    var hand = cards.sublist(0,size);
    cards= cards.sublist(size);
    return hand;
  }
  
  cardsWithSuit(String color){
    List<Card> matched = [];
    
    for(var card in cards){
      if(card.suit == color){
        matched.add(card);
      }
    }
    return matched;
  }
  
  
//   @override
//   String toString() {
//     return "It is a deck";
//   }
  
  
}
class Card {
  // represents the rank such as Ace, Queen, Jack
  String rank;
  // represents the suit such as Spade, Club
  String suit;
  
  Card(this.suit, this.rank);
  
  @override
 String toString(){
   return "$rank of $suit";
  }
  
  
}










