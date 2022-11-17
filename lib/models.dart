// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Opponent {
  final String opponentName;

  Opponent(this.opponentName);
}

class RealOpponent extends Opponent {
  final int playersNumber;

  RealOpponent(super.opponentName, this.playersNumber);
}

class FantasyOpponent extends Opponent {
  int playersNumber = 0;

  FantasyOpponent(super.opponentName);
}

class Match {
  final RealOpponent opponent1;
  final RealOpponent opponent2;
  final List<Contest> contests = [];

  Match(this.opponent1, this.opponent2);
}

class Contest {
  final String prizePool;
  final String entryFee;
  final List<Team> teams = [];

  Contest(this.prizePool, this.entryFee);
}

class Team {
  String name;
  String captain;
  String viceCaptain;
  int wk ;
  int bat;
  int ar;
  int bowl;
  final FantasyOpponent opponent1;
  final FantasyOpponent opponent2;

  Team(
    this.name,
    this.captain,
    this.viceCaptain,
    this.wk,
    this.bat,
    this.ar,
    this.bowl,
    this.opponent1,
    this.opponent2,
  );
}
