#include <stdlib.h>

int main() {
    system("start /B .\\bin\\javaw.exe -Djna.nosys=true -jar sheepit-client.jar -ui swing");
    return 0;
}
