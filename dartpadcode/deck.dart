void main() {
  final deck = new Deck();

  print(deck);
  deck.shuffle();
  print('');
  print(deck);
  print('');
  print(deck.cardsWithSuit('∞').join(','));
  print('');
  print(deck.deal(5).join(','));
  print('');
  print(deck);
  print('');
  deck.removeCard('∞', 'Joker');
  print('');
  print(deck);
}

class Deck {
  final List<Card> cards = [new Card('∞', 'Joker')];

  Deck() {
    final ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    final suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        final card = new Card(suit, rank);

        cards.add(card);
      }
    }
  }
  
  shuffle() {
    cards.shuffle();
  }
  
  cardsWithSuit(String suit) => 
    cards.where((Card e) => e.suit == suit).toList();
  
  deal(int handSize) {
    final hand = cards.sublist(0, handSize);
    
    cards.removeRange(0, handSize);
    
    return hand;
  }
  
  removeCard(String suit, String rank) =>
    cards.removeWhere((Card c) => c.suit == suit && c.rank == rank);

  String toString() =>
    cards.map((card) => card.toString()).join(',');
}

class Card {
  String suit;
  String rank;

  Card(this.suit, this.rank);
  
  String toString() {
    return '[$rank of $suit]';
  }
}
