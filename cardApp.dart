void main() {
  var deck = new Deck();
​
//   print(deck);
​
//   deck.printCards();
​
//   deck.randomize();
//   deck.printCards();
//   var hand = deck.deal(6);
//   print(hand);
//   deck.printCards();
  var cards = deck.cardsWithSuit(color: 'Clubs');
  print(cards);
  deck.printCards();
  deck.removeCard("Ace","Spade");
  deck.printCards();
  
}
​
// this is a collection of cards
class Deck {
  // collection of 52 playing cards
  List<Card> cards = [];
​
  Deck() {
    //create 52 cards and assign it to the cards field
    List<String> ranks = ["Ace", "Two", "Three", "Four", "Five", "Six"];
    List<String> suits = ["Spade", "Clubs", "Hearts", "Diamonds"];
​
    // nested for loop
//     for( int i = 0; i< suits.length; i++) {
//       for(int j =0; j< ranks.length; j++ ){
//         //create a new Card and add it to cards
//         var card = new Card(suits[i], ranks[j]);
//        cards.add(card);
​
//       }
//     }
    for (var suit in suits) {
      for (var order in ranks) {
        var card = new Card(rank: order, suit: suit);
        card.rank = "1";
        cards.add(card);
      }
    }
//     for(int i= 0;i<suits.length; i++){
//       var suit = suits[i];
//     }
  }
​
  void printCards() {
    print(cards);
  }
​
  void randomize() {
    cards.shuffle();
  }
​
 List<Card> deal(int size) {
    var hand = cards.sublist(0, size);
    cards = cards.sublist(size);
    return hand;
  }
​
 List<Card> cardsWithSuit({String color}) {
//     var matched = [];
//     for (var card in cards) {
//       if (card.suit == color) {
//         matched.add(card);
//       }
//     }
//     return matched;
    
//     var matched = cards.where((card) {
//       return card.suit == color;
//     });
     return cards.where((singleCard)  => singleCard.suit == color).toList();
  }
 void removeCard(String rank, String suit) {
    //todo remove the card which matches the supplied rank and suit
    cards.removeWhere((singleCard)=> (singleCard.suit == suit) && (singleCard.rank == rank));
    
  }
  
}
​
class Card {
  // represents the rank such as Ace, Queen, Jack
  String rank;
  // represents the suit such as Spade, Club
  String suit;
​
  Card({this.suit, this.rank});
​
  @override
  String toString() {
    return "$rank of $suit";
  }
}