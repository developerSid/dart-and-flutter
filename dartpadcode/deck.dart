void main() {
  final deck = new Deck();
  
  print(deck);
}

class Deck {
  final List<Card> cards = [];
  
  Deck() {
    final ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    final suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    
    for (var suit in suits) {
      for (var rank in ranks) {
        final card = new Card(rank, suit);
        
        cards.add(card);
      }
    }
  }
  
  String toString() {
    return 'this is a deck!';
  }
}

class Card {
  String suit;
  String rank;
  
  Card(this.suit, this.rank);
}
