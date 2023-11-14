 int rows = 3;
int cols = 3;
int[][] board = new int[rows][cols];
int currentPlayer = 1;

void setup() {
  size(500, 500);
  background(255);
  stroke(0);
  strokeWeight(4);
  for (int i = 1; i < cols; i++) {
    line(i * width / cols, 0, i * width / cols, height);
  }
  for (int i = 1; i < rows; i++) {
    line(0, i * height / rows, width, i * height / rows);
  }
}

void draw() {
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      int x = j * width / cols;
      int y = i * height / rows;
      if (board[i][j] == 1) {
        drawX(x, y);
      } else if (board[i][j] == 2) {
        drawO(x, y);
      }
    }
  }
  
  int result = checkWinner();
  if (result == 1) {
    textSize(32);
    fill(0, 0, 255);
    text("Player 1 wins!", 20, height / 2);
    noLoop();
  } else if (result == 2) {
    textSize(32);
    fill(255, 0, 0);
    text("Player 2 wins!", 20, height / 2);
    noLoop();
  }
}

void mousePressed() {
  int i = floor(mouseY / (height / rows));
  int j = floor(mouseX / (width / cols));
  if (board[i][j] == 0) {
    board[i][j] = currentPlayer;
    currentPlayer = 3 - currentPlayer; // Toggle between player 1 and 2
  }
}

int checkWinner() {
  // Check rows
  for (int i = 0; i < rows; i++) {
    if (board[i][0] != 0 && board[i][0] == board[i][1] && board[i][1] == board[i][2]) {
      return board[i][0];
    }
  }
  
  // Check columns
  for (int j = 0; j < cols; j++) {
    if (board[0][j] != 0 && board[0][j] == board[1][j] && board[1][j] == board[2][j]) {
      return board[0][j];
    }
  }
  
  // Check diagonals
  if (board[0][0] != 0 && board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
    return board[0][0];
  }
  if (board[0][2] != 0 && board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
    return board[0][2];
  }
  
  // Check for a draw
  boolean isDraw = true;
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (board[i][j] == 0) {
        isDraw = false;
        break;
      }
    }
  }
  if (isDraw) {
    textSize(32);
    fill(0);
    text("It's a draw!", 20, height / 2);
    noLoop();
  }
  
  return 0;
}

void drawX(int x, int y) {
  line(x + 20, y + 20, x + width / cols - 20, y + height / rows - 20);
  line(x + width / cols - 20, y + 20, x + 20, y + height / rows - 20);
}

void drawO(int x, int y) {
  ellipse(x + width / cols / 2, y + height / rows / 2, width / cols - 40, height / rows - 40);
}
