String[] lines;
PImage lib;
StringParser sp;
String[] rom;
StringParser rj;
String[] bib;
StringParser bible;

void setup() {
  size(1139, 594);
  rom=loadStrings("romeo.txt");
  String r=join(rom, " ");
  rj=new StringParser(r);
  
  bib=loadStrings("bible.txt");
  String b=join(bib, " ");
  bible=new StringParser(b);
  
  lines=loadStrings("paper.txt");
  String s=join(lines, " ");
  sp=new StringParser(s);



  lib=loadImage("background.png");
  background(lib);
  textSize(50);
  fill(255);
  float w=textWidth("Click on a glowing book to find its \nreading level and difficulty");
  text("Click on a glowing book to find its \nreading level and difficulty", 170, 460);
  //parseIt();
}
void draw() {
  //if (mouseX>170&&mouseX<290&&mouseY>45&&mouseY<200){
  //  text("Reading level: "+rj.level(), 100,100);
  //}
  //if (mouseX>622&&mouseX<726&&mouseY>222&&mouseY<350){
  //  text("Reading level: "+bible.ease(), 100,100);
  //}
}
void parseIt() {
  

  println("words: "+sp.countWords());
  println("vowels: "+sp.countVowels());
  println("exceptions: "+sp.exceptions());
  println("syllables: "+sp.countSyllables());
  println("sentences: "+sp.countSentences());
  println("Flesch reading ease: "+sp.ease());
  println("Flesch reading level: "+sp.level());
}
void mouseClicked(){
  textSize(24);
  if (mouseX>170&&mouseX<290&&mouseY>45&&mouseY<200){
    text("Reading level: "+rj.level(), 80,35);
  }
  if (mouseX>622&&mouseX<726&&mouseY>222&&mouseY<350){
    text("Reading level: "+bible.level(), 610,177);
  }
}
