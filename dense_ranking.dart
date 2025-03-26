List<int> denseRanking(List<int> leaderboard, List<int> gitsScores) {
  List<int> uniqueRanks = leaderboard.toSet().toList()..sort((b, a) => a.compareTo(b));
  List<int> result = [];

  for (int score in gitsScores) {
    int rank = 1;
    while (rank <= uniqueRanks.length && score < uniqueRanks[rank - 1]) {
      rank++;
    }
    result.add(rank);
  }
  return result;
}

void main() {
  List<int> leaderboard1 = [100, 100, 50, 40, 40, 20, 10];
  List<int> gits1 = [5, 25, 50, 120];
  print(denseRanking(leaderboard1, gits1)); 

  List<int> leaderboard2 = [200, 150, 150, 100, 90, 80];
  List<int> gits2 = [50, 85, 150, 250];
  print(denseRanking(leaderboard2, gits2)); 

  List<int> leaderboard3 = [300, 200, 100];
  List<int> gits3 = [50, 100, 300];
  print(denseRanking(leaderboard3, gits3)); 
}