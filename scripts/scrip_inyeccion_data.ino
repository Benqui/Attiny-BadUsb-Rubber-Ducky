#include "DigiKeyboard.h"

void setup() {
  DigiKeyboard.delay(2000);
  DigiKeyboard.sendKeyStroke(KEY_T,MOD_CONTROL_LEFT|MOD_ALT_LEFT);
  DigiKeyboard.delay(5000);
  
  //DigiKeyboard.print("sshpass -p 'plicky01' scp benqui@192.168.1.123:~/rob_scripts/robo_script.sh ~/");
  DigiKeyboard.print("sshpass -p 'plicky01' scp benqui@10.1.105.139:~/scripts/robo.sh ~/");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(1000);
  
  DigiKeyboard.print("bash ~/robo.sh");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(1000);

}


void loop() {
  
}
